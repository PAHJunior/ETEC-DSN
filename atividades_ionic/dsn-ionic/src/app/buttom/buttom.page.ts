import { Component, OnInit } from '@angular/core';
import { AlertController } from '@ionic/angular';

@Component({
  selector: 'app-buttom',
  templateUrl: './buttom.page.html',
  styleUrls: ['./buttom.page.scss'],
})
export class ButtomPage implements OnInit {

  constructor(public alertController: AlertController) { }

  ngOnInit() {
    alert('Iniciou')
  }

  async alerta(form) {
    const alert = await this.alertController.create({
      header: 'Alerta',
      subHeader: 'Ionic',
      message: `Olá. ${form}`,
      buttons: ['OK']
    });
  
    await alert.present();
  }

  

}
