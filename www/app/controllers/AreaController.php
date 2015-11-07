<?php
    /**
     * Created by PhpStorm.
     * User: dragos
     * Date: 07/11/15
     * Time: 17:00
     */

class AreaController extends ControllerBase
{

    public function initialize()
    {
        parent::initialize();

        // breadcrumb
        $this->pageBreadcrumbs[] = 'Areas';
        $this->view->setVar('pageBreadcrumbs', $this->pageBreadcrumbs);

        // page title icon
        $this->view->pageTitleIcon = '<i class="fa-fw fa fa-flag"></i>';
    }

    public function indexAction()
    {
        // set page title
        $this->view->pageTitle = 'Areas';
    }

    public function addAction()
    {

        // set page title
        $this->view->pageTitle = 'Add Area';

        // breadcrumb
        $this->pageBreadcrumbs[] = 'Add Area';
        $this->view->setVar('pageBreadcrumbs', $this->pageBreadcrumbs);

        $this->view->name         = null;

        $area = new Areas();

        // process post
        if ($this->request->isPost()) {

            // Receiving the variables sent by POST
            $this->view->name         = $this->filter->sanitize($this->request->getPost('name', 'string'), "trim");

            // save
            $area->name            = $this->view->name;

            $area->created         = date('Y-m-d H:i:s');
            $area->modified        = date('Y-m-d H:i:s');
            $area->modified_by     = $this->userSession['email'];

            if ( $area->create() == false ) {

                $this->logger->log("Nu s-a putut salva.", \Phalcon\Logger::ERROR);
                foreach ( $area->getMessages() as $message ) {
                    $this->logger->log($message, \Phalcon\Logger::ERROR);
                }
                $this->getFlashSession('error', 'Ne pare rau, nu s-a putut crea o noua inregistrare de Zona. Reincercati.', true);

            } else {

                $this->getFlashSession('success', 'Noua Zona s-a creat.', true);

                // Forward to index
                return $this->response->redirect("/area");

            }


        } // post

    } // add

    public function wfsAction()
    {

    }
}