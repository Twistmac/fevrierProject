<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Entite\Inscriptionannule;

class InscriptionannuleController extends Controller
{
    public get($id){
      return App\Entite\Inscriptionannule::find($id);
    }

    public getAll(){
      return App\Entite\Inscriptionannule::all();
    }

    public create($idPersonneMorale,$idPersonnePhysique,$dateInscription,$typeInscription){
      $inscriptionAnnule = new Inscriptionannule;
      $inscriptionAnnule->IDPERSONNEMORALE = $idPersonneMorale;
      $inscriptionAnnule->IDPERSONNEPHYSIQUE = $idPersonnePhysique;
      $inscriptionAnnule->DATEINSCRIPTION = $dateInscription;
      $inscriptionAnnule->TYPEINSCRIPTION = $typeInscription;
      $inscriptionAnnule->save();
    }

    public update($id,$idPersonneMorale,$idPersonnePhysique,$dateInscription,$typeInscription){
      $inscriptionAnnule = this.get($id);
      $inscriptionAnnule->IDPERSONNEMORALE = $idPersonneMorale;
      $inscriptionAnnule->IDPERSONNEPHYSIQUE = $idPersonnePhysique;
      $inscriptionAnnule->DATEINSCRIPTION = $dateInscription;
      $inscriptionAnnule->TYPEINSCRIPTION = $typeInscription;
      $inscriptionAnnule->save();
    }

    public delete($id){
      $inscriptionAnnule = this.get($id);
      $inscriptionAnnule->delete();
    }

}
