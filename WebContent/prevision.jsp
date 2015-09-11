<h2 class="widget-title">Previsiones</h2>

<div id="prevision_container">
	<div id="prevision_tabs" class="prevision_tabs">
		<button data-target="prevision_general">General</button>
		<button data-target="prevision_franjas">Franjas</button>
		<button data-target="prevision_grafico">Grafico</button>
	</div>
	<div id="prevision_general" class="prevision_tabs_content"
		style="display: none">
		<div id="prevision_cabecera" class="previ_cabecera">
			<div id="previ_cabecera_sup">
				<div id="txt_previ_hora">HORA</div>
				<div id="txt_previ_olas">OLAS</div>
				<div id="txt_previ_marea">MAREA</div>
				<div id="txt_previ_viento">VIENTO</div>
				<div id="txt_previ_tiempo">TIEMPO</div>
				<div id="txt_previ_rating">RATING</div>
			</div>
			<div id="previ_cabecera_sub">
				<div id="txt_previ_altura">Altura</div>
				<div id="txt_previ_direccion_ola">Direcci&oacute;n</div>
				<div id="txt_previ_periodo">Periodo</div>
				<div id="txt_previ_direccion_viento">Direcci&oacute;n</div>
				<div id="txt_previ_fuerza">Fuerza</div>
			</div>
		</div>
<script>

var json_data;
var datos_previ = [];
const HOUR1 = 7;

$.getJSON('<%=request.getContextPath()%>/prevision.json', function(data) {
	$.each(data['forecasts'], function(index, value) {
		if (undefined != value['forecast'][HOUR1]) {
			if (undefined != value['forecast'][HOUR1]['weather']) {
				if (undefined != value['forecast'][HOUR1]['weather']['temp']) {
					datos1.push({d : value['day'], s : value['forecast'][HOUR1]['swell']['size'], t : value['forecast'][HOUR1]['weather']['temp'].split(" ",1).toString()});
				} else {
					datos1.push({d : value['day'], s : value['forecast'][HOUR1]['swell']['size'], t : 0});
				}
			}
		}
	});
});
console.info(datos1);
	
</script>

		<ul>
			<!-- Inicio Bucle -->
			<li>
				<div class="previ_resumen">
					<div class="previ_mas">
						<input type="button" class="previ_expand verMas" value="+">
					</div>
					<div class="previ_hora">
						<span>07/03</span>
					</div>
					<div class="previ_olas">
						<div class="altura_ola">

							<img alt="icono altura y fuerza de las olas 0.6"
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
							<span> 0.6 m</span>
						</div>
						<div class="direccion_ola">

							<img alt="Direcci�n de las olas swell "
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
							<span>NNW</span>
						</div>
						<div class="periodo_ola">

							<span class="sp_periodo_ola">8s</span>
						</div>
					</div>
					<div class="previ_marea">
						<img
							src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
						<span></span> <span></span>
					</div>
					<div class="previ_viento">
						<div class="direccion_viento">

							<img alt="Direcci�n del viento"
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
							<span>NNW</span>
						</div>
						<div class="fuerza_viento">

							<img
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
							<span>1.5</span>
						</div>
					</div>
					<div class="previ_tiempo">
						<span class="meteo previ_meteo">Q</span> <span>18c</span>
					</div>
					<div class="previ_rating">
						<span data-value="q-45" data-type="index-quality">*****</span>
					</div>
				</div>
				<div class="previ_detalle" style="display: none">
					<div class="cnt_previ_detalle">

						<ul>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>00:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>01:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>02:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>03:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>04:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>05:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>06:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>07:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>08:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>09:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>10:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>11:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>12:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>13:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>14:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>15:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>16:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>17:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>18:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>19:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>20:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>21:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>22:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
							<li>
								<div class="previ_resumen">
									<div class="previ_hora">
										<span>23:00</span>
									</div>
									<div class="previ_olas">
										<div class="altura_ola">

											<img alt="icono altura y fuerza de las olas 0.6"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
											<span> 0.6 m</span>
										</div>
										<div class="direccion_ola">

											<img alt="Direcci�n de las olas swell "
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
											<span>NNW</span>
										</div>
										<div class="periodo_ola">

											<span class="sp_periodo_ola">8s</span>
										</div>
									</div>
									<div class="previ_marea">
										<img
											src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/updown.svg">
										<span></span> <span></span>
									</div>
									<div class="previ_viento">
										<div class="direccion_viento">

											<img alt="Direcci�n del viento"
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
											<span>NNW</span>
										</div>
										<div class="fuerza_viento">

											<img
												src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
											<span>1.5</span>
										</div>
									</div>
									<div class="previ_tiempo">
										<span class="meteo previ_meteo">Q</span> <span>18c</span>
									</div>
									<div class="previ_rating">
										<span data-value="q-45" data-type="index-quality">*****</span>
									</div>
								</div>
							</li>
						</ul>

					</div>
				</div>
			</li>
			<!-- Fin Bucle -->
			<li>
				<div class="previ_resumen">
					<div class="previ_mas">
						<input type="button" class="previ_expand verMas" value="+">
					</div>
					<div class="previ_hora">
						<span>08/03</span>
					</div>
					<div class="previ_olas">
						<div class="altura_ola">

							<img alt="icono altura y fuerza de las olas 0.6"
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
							<span> 0.6 m</span>
						</div>
						<div class="direccion_ola">

							<img alt="Direcci�n de las olas swell "
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
							<span>NNW</span>
						</div>
						<div class="periodo_ola">

							<span class="sp_periodo_ola">8s</span>
						</div>
					</div>
					<div class="previ_marea">
						<img
							src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/middledown.svg">
						<span></span> <span></span>
					</div>
					<div class="previ_viento">
						<div class="direccion_viento">

							<img alt="Direcci�n del viento"
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
							<span>NNW</span>
						</div>
						<div class="fuerza_viento">

							<img
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
							<span>1.5</span>
						</div>
					</div>
					<div class="previ_tiempo">
						<span class="meteo previ_meteo">Q</span> <span>18c</span>
					</div>
					<div class="previ_rating">
						<span data-value="q-45" data-type="index-quality">*****</span>
					</div>
				</div>
				<div class="previ_detalle" style="display: none">
					<p>prueba</p>
				</div>
			</li>
			<li>
				<div class="previ_resumen">
					<div class="previ_mas">
						<input type="button" class="previ_expand verMas" value="+">
					</div>
					<div class="previ_hora">
						<span>09/03</span>
					</div>
					<div class="previ_olas">
						<div class="altura_ola">

							<img alt="icono altura y fuerza de las olas 0.6"
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/swell/small.svg">
							<span> 0.6 m</span>
						</div>
						<div class="direccion_ola">

							<img alt="Direcci�n de las olas swell "
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/direction.svg">
							<span>NNW</span>
						</div>
						<div class="periodo_ola">

							<span class="sp_periodo_ola">8s</span>
						</div>
					</div>
					<div class="previ_marea">
						<img
							src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/tides/middledown.svg">
						<span></span> <span></span>
					</div>
					<div class="previ_viento">
						<div class="direccion_viento">

							<img alt="Direcci�n del viento"
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind-direction.svg">
							<span>NNW</span>
						</div>
						<div class="fuerza_viento">

							<img
								src="https://www.surfsearchspot.com/wp-content/themes/surfSearchSpot/img/icons/wind/calm.svg">
							<span>1.5</span>
						</div>
					</div>
					<div class="previ_tiempo">
						<span class="meteo previ_meteo">Q</span> <span>18c</span>
					</div>
					<div class="previ_rating">
						<span data-value="q-45" data-type="index-quality">*****</span>
					</div>
				</div>
				<div class="previ_detalle" style="display: none">
					<p>prueba</p>
				</div>
			</li>
		</ul>
	</div>
	<div id="prevision_franjas" class="prevision_tabs_content"
		style="display: none"></div>
	<div id="prevision_grafico" class="prevision_tabs_content">
		<div id="grafico_olas"></div>
		<br>
		<br>
		<div id="grafico_temp"></div>
	</div>

</div>
<script>
	$(".previ_expand").click(
			function(event) {
				$(event.target).closest("li").find(".previ_detalle").toggle(
						"slow", function() {
							// Animation complete.
						});
			});
	$("#prevision_tabs button").click(function(event) {
		$(".prevision_tabs_content").hide();
		$("#" + event.target.dataset.target).toggle("slow", function() {
			// Animation complete.
		});

	});
	
	
	//Grafico
	
	
	var json_data;
	var datos = [];
	const HOUR = 7;
	
	$.getJSON('<%=request.getContextPath()%>/prevision.json', function(data) {
		console.info('json cargado con exito');
		$.each(data['forecasts'], function(index, value) {
			if (undefined != value['forecast'][HOUR]) {
				datos.push({d : value['day'], s : value['forecast'][HOUR]['swell']['size']});
			}
		});

						new Morris.Area({
							element : 'grafico_olas',
							data : datos,
							xkey : 'd',
							ykeys : [ 's'],
							labels : [ 'Altura Olas'],
							padding : 10,
							behaveLikeLine : true,
							grid : true,
							gridLineColor : '#DDD',
							axes : true,
							fillOpacity : .1,
							lineColors : [ '#6EB0C3'],
							lineWidth : '5px',
							resize : true,
							hideHover : 'auto'
						});
					});
</script>