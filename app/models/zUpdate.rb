require 'time'



class ZUpdate < ApplicationRecord




	def self.update

		AudCpi.new_lookup
		AudGdp.new_lookup
		AudInflation.new_lookup
		AudInterest.new_lookup
		AudPmi.new_lookup
		AudTradebalance.new_lookup
		AudUnemployment.new_lookup
		

		puts "done Aud"

		CadGdp.new_lookup
		CadInflation.new_lookup
		CadInterest.new_lookup
		CadPmi.new_lookup
		CadTradebalance.new_lookup
		CadUnemployment.new_lookup
		@cadgrade=ZUpdate.cadGrade

		puts "done Cad"

		ChfGdp.new_lookup
		ChfInflation.new_lookup
		ChfInterest.new_lookup
		ChfPmi.new_lookup
		ChfTradebalance.new_lookup
		ChfUnemployment.new_lookup
		@chfgrade=ZUpdate.chfGrade

		puts "done Chf"

		EurGdp.new_lookup
		EurInflation.new_lookup
		EurInterest.new_lookup
		EurPmi.new_lookup
		EurTradebalance.new_lookup
		EurUnemployment.new_lookup
		@eurgrade=ZUpdate.eurGrade

		puts "done Eur"

		GbpGdp.new_lookup
		GbpInflation.new_lookup
		GbpInterest.new_lookup
		GbpPmi.new_lookup
		GbpTradebalance.new_lookup
		GbpUnemployment.new_lookup
		@gbpgrade=ZUpdate.gbpGrade

		puts "done Gbp"

		JpyGdp.new_lookup
		JpyInflation.new_lookup
		JpyInterest.new_lookup
		JpyPmi.new_lookup
		JpyTradebalance.new_lookup
		JpyUnemployment.new_lookup
		@jpygrade=ZUpdate.jpyGrade

		puts "done Jpy"

		NzdGdp.new_lookup
		NzdInflation.new_lookup
		NzdInterest.new_lookup
		NzdPmi.new_lookup
		NzdTradebalance.new_lookup
		NzdUnemployment.new_lookup
		@nzdgrade=ZUpdate.nzdGrade

		puts "done Nzd"

		UsdGdp.new_lookup
		UsdInflation.new_lookup
		UsdInterest.new_lookup
		UsdPmi.new_lookup
		UsdTradebalance.new_lookup
		UsdUnemployment.new_lookup
		@usdgrade=ZUpdate.usdGrade

		return "Succeed"
	end


	def self.savedata
 


		@audgrade=Aud.new(grade: ZUpdate.audGrade, cot: 0)
			if (AudGdp.actual.to_f != AudGdp.last.actual) || (AudInflation.actual.to_f != AudInflation.last.actual) || (AudInterest.actual.to_f != AudInterest.last.actual) || (AudPmi.actual.to_f != AudPmi.last.actual) || (AudTradebalance.actual.to_f != AudTradebalance.last.actual) || (AudUnemployment.actual.to_f != AudUnemployment.last.actual)
				@audgrade.save
				puts "Aud Grade Updated at #{Aud.last.updated_at}"
			else
				puts ""
			end





		@audCpidata=AudCpi.new(releasedate: AudCpi.release_date, actual: AudCpi.actual, forecast: AudCpi.forecast, previous: AudCpi.previous, aud_id: Aud.last.id)

			if DateTime.parse(AudCpi.release_date).to_date > AudCpi.last.releasedate
				@audCpidata.save
				puts "Saved AudCpi Data"
			else
				puts "ERRORRRRSSSS"

			end



		@audGdpdata=AudGdp.new(releasedate: AudGdp.release_date, actual: AudGdp.actual, forecast: AudGdp.forecast, previous: AudGdp.previous, aud_id: Aud.last.id)

			if DateTime.parse(AudGdp.release_date).to_date > AudGdp.last.releasedate
				@audGdpdata.save
				puts "Saved AudGdp Data"
			else
				puts "ERRORRRRSSSS"
			end

		@audInflationdata=AudInflation.new(releasedate: AudInflation.release_date, actual: AudInflation.actual, forecast: AudInflation.forecast, previous: AudInflation.previous, aud_id: Aud.last.id)

			if DateTime.parse(AudInflation.release_date).to_date > AudInflation.last.releasedate
				@audInflationdata.save
				puts "Saved AudInflation Data"
			else
				puts "ERRORRRRSSSS"
			end

		@audInterestdata=AudInterest.new(releasedate: AudInterest.release_date, actual: AudInterest.actual, forecast: AudInterest.forecast, previous: AudInterest.previous, aud_id: Aud.last.id)

			if DateTime.parse(AudInterest.release_date).to_date > AudInterest.last.releasedate
				@audInterestdata.save
				puts "Saved AudInterest Data"
			else
				puts "ERRORRRRSSSS"
			end

		@audPmidata=AudPmi.new(releasedate: AudPmi.release_date, actual: AudPmi.actual, forecast: AudPmi.forecast, previous: AudPmi.previous, aud_id: Aud.last.id)

			if DateTime.parse(AudPmi.release_date).to_date > AudPmi.last.releasedate
				@audPmidata.save
				puts "Saved AudPmi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@audTradebalancedata=AudTradebalance.new(releasedate: AudTradebalance.release_date, actual: AudTradebalance.actual, forecast: AudTradebalance.forecast, previous: AudTradebalance.previous, aud_id: Aud.last.id)

			if DateTime.parse(AudTradebalance.release_date).to_date > AudTradebalance.last.releasedate
				@audTradebalancedata.save
				puts "Saved AudTradebalance Data"
			else
				puts "ERRORRRRSSSS"
			end

		@audUnemploymentdata=AudUnemployment.new(releasedate: AudUnemployment.release_date, actual: AudUnemployment.actual, forecast: AudUnemployment.forecast, previous: AudUnemployment.previous, aud_id: Aud.last.id)

			if DateTime.parse(AudUnemployment.release_date).to_date > AudUnemployment.last.releasedate
				@audUnemploymentdata.save
				puts "Saved AudUnemployment Data"
			else
				puts "ERRORRRRSSSS"
			end





		@cadCpidata=CadCpi.new(releasedate: CadCpi.release_date, actual: CadCpi.actual, forecast: CadCpi.forecast, previous: CadCpi.previous, cad_id: Cad.last.id)

			if DateTime.parse(CadCpi.release_date).to_date > Cadcpi.last.releasedate
				@cadCpidata.save
				puts "Saved CadCpi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@cadGdpdata=CadGdp.new(releasedate: CadGdp.release_date, actual: CadGdp.actual, forecast: CadGdp.forecast, previous: CadGdp.previous, cad_id: Cad.last.id)

			if DateTime.parse(CadGdp.release_date).to_date > CadGdp.last.releasedate
				@cadGdpdata.save
				puts "Saved CadGdp Data"
			else
				puts "ERRORRRRSSSS"
			end

		@cadInflationdata=CadInflation.new(releasedate: CadInflation.release_date, actual: CadInflation.actual, forecast: CadInflation.forecast, previous: CadInflation.previous, cad_id: Cad.last.id)

			if DateTime.parse(CadInflation.release_date).to_date > CadInflation.last.releasedate
				@cadInflationdata.save
				puts "Saved CadInflation Data"
			else
				puts "ERRORRRRSSSS"
			end

		@cadInterestdata=CadInterest.new(releasedate: CadInterest.release_date, actual: CadInterest.actual, forecast: CadInterest.forecast, previous: CadInterest.previous, cad_id: Cad.last.id)

			if DateTime.parse(CadInterest.release_date).to_date > CadInterest.last.releasedate
				@cadInterestdata.save
				puts "Saved CadInterest Data"
			else
				puts "ERRORRRRSSSS"
			end

		@cadPmidata=CadPmi.new(releasedate: CadPmi.release_date, actual: CadPmi.actual, forecast: CadPmi.forecast, previous: CadPmi.previous, cad_id: Cad.last.id)

			if DateTime.parse(CadPmi.release_date).to_date > CadPmi.last.releasedate
				@cadPmidata.save
				puts "Saved CadPmi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@cadTradebalancedata=CadTradebalance.new(releasedate: CadTradebalance.release_date, actual: CadTradebalance.actual, forecast: CadTradebalance.forecast, previous: CadTradebalance.previous, cad_id: Cad.last.id)

			if DateTime.parse(CadTradebalance.release_date).to_date > CadTradebalance.last.releasedate
				@cadTradebalancedata.save
				puts "Saved CadTradebalance Data"
			else
				puts "ERRORRRRSSSS"
			end

		@cadUnemploymentdata=CadUnemployment.new(releasedate: CadUnemployment.release_date, actual: CadUnemployment.actual, forecast: CadUnemployment.forecast, previous: CadUnemployment.previous, cad_id: Cad.last.id)

			if DateTime.parse(CadUnemployment.release_date).to_date > CadUnemployment.last.releasedate
				@cadUnemploymentdata.save
				puts "Saved CadUnemployment Data"
			else
				puts "ERRORRRRSSSS"
			end





		@chfCpidata=ChfCpi.new(releasedate: ChfCpi.release_date, actual: ChfCpi.actual, forecast: ChfCpi.forecast, previous: ChfCpi.previous, chf_id: Chf.last.id)

			if DateTime.parse(ChfCpi.release_date).to_date > ChfCpi.last.releasedate
				@chfCpidata.save
				puts "Saved ChfCpi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@chfGdpdata=ChfGdp.new(releasedate: ChfGdp.release_date, actual: ChfGdp.actual, forecast: ChfGdp.forecast, previous: ChfGdp.previous, chf_id: Chf.last.id)

			if DateTime.parse(ChfGdp.release_date).to_date > ChfGdp.last.releasedate
				@chfGdpdata.save
				puts "Saved ChfGdp Data"
			else
				puts "ERRORRRRSSSS"
			end

		@chfInflationdata=ChfInflation.new(releasedate: ChfInflation.release_date, actual: ChfInflation.actual, forecast: ChfInflation.forecast, previous: ChfInflation.previous, chf_id: Chf.last.id)

			if DateTime.parse(ChfInflation.release_date).to_date > ChfInflation.last.releasedate
				@chfInflationdata.save
				puts "Saved ChfInflation Data"
			else
				puts "ERRORRRRSSSS"
			end

		@chfInterestdata=ChfInterest.new(releasedate: ChfInterest.release_date, actual: ChfInterest.actual, forecast: ChfInterest.forecast, previous: ChfInterest.previous, chf_id: Chf.last.id)

			if DateTime.parse(ChfInterest.release_date).to_date > ChfInterest.last.releasedate
				@chfInterestdata.save
				puts "Saved ChfInterest Data"
			else
				puts "ERRORRRRSSSS"
			end

		@chfPmidata=ChfPmi.new(releasedate: ChfPmi.release_date, actual: ChfPmi.actual, forecast: ChfPmi.forecast, previous: ChfPmi.previous, chf_id: Chf.last.id)

			if DateTime.parse(ChfPmi.release_date).to_date > ChfPmi.last.releasedate
				@chfPmidata.save
				puts "Saved ChfPmi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@chfTradebalancedata=ChfTradebalance.new(releasedate: ChfTradebalance.release_date, actual: ChfTradebalance.actual, forecast: ChfTradebalance.forecast, previous: ChfTradebalance.previous, chf_id: Chf.last.id)

			if DateTime.parse(ChfTradebalance.release_date).to_date > ChfTradebalance.last.releasedate
				@chfTradebalancedata.save
				puts "Saved ChfTradebalance Data"
			else
				puts "ERRORRRRSSSS"
			end

		@chfUnemploymentdata=ChfUnemployment.new(releasedate: ChfUnemployment.release_date, actual: ChfUnemployment.actual, forecast: ChfUnemployment.forecast, previous: ChfUnemployment.previous, chf_id: Chf.last.id)

			if DateTime.parse(ChfUnemployment.release_date).to_date > ChfUnemployment.last.releasedate
				@chfUnemploymentdata.save
				puts "Saved ChfUnemployment Data"
			else
				puts "ERRORRRRSSSS"
			end




		@eurCpidata=EurCpi.new(releasedate: EurCpi.release_date, actual: EurCpi.actual, forecast: EurCpi.forecast, previous: EurCpi.previous, eur_id: Eur.last.id)

			if DateTime.parse(EurCpi.release_date).to_date > EurCpi.last.releasedate
				@eurCpidata.save
				puts "Saved EurCpi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@eurGdpdata=EurGdp.new(releasedate: EurGdp.release_date, actual: EurGdp.actual, forecast: EurGdp.forecast, previous: EurGdp.previous, eur_id: Eur.last.id)

			if DateTime.parse(EurGdp.release_date).to_date > EurGdp.last.releasedate
				@eurGdpdata.save
				puts "Saved EurGdp Data"
			else
				puts "ERRORRRRSSSS"
			end

		@eurInflationdata=EurInflation.new(releasedate: EurInflation.release_date, actual: EurInflation.actual, forecast: EurInflation.forecast, previous: EurInflation.previous, eur_id: Eur.last.id)

			if DateTime.parse(EurInflation.release_date).to_date > EurInflation.last.releasedate
				@eurInflationdata.save
				puts "Saved EurInflation Data"
			else
				puts "ERRORRRRSSSS"
			end

		@eurInterestdata=EurInterest.new(releasedate: EurInterest.release_date, actual: EurInterest.actual, forecast: EurInterest.forecast, previous: EurInterest.previous, eur_id: Eur.last.id)

			if DateTime.parse(EurInterest.release_date).to_date > EurInterest.last.releasedate
				@eurInterestdata.save
				puts "Saved EurInterest Data"
			else
				puts "ERRORRRRSSSS"
			end

		@eurPmidata=EurPmi.new(releasedate: EurPmi.release_date, actual: EurPmi.actual, forecast: EurPmi.forecast, previous: EurPmi.previous, eur_id: Eur.last.id)

			if DateTime.parse(EurPmi.release_date).to_date > EurPmi.last.releasedate
				@eurPmidata.save
				puts "Saved EurPmi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@eurTradebalancedata=EurTradebalance.new(releasedate: EurTradebalance.release_date, actual: EurTradebalance.actual, forecast: EurTradebalance.forecast, previous: EurTradebalance.previous, eur_id: Eur.last.id)

			if DateTime.parse(EurTradebalance.release_date).to_date > EurTradebalance.last.releasedate
				@eurTradebalancedata.save
				puts "Saved EurTradebalance Data"
			else
				puts "ERRORRRRSSSS"
			end

		@eurUnemploymentdata=EurUnemployment.new(releasedate: EurUnemployment.release_date, actual: EurUnemployment.actual, forecast: EurUnemployment.forecast, previous: EurUnemployment.previous, eur_id: Eur.last.id)

			if DateTime.parse(EurUnemployment.release_date).to_date > EurUnemployment.last.releasedate
				@eurUnemploymentdata.save
				puts "Saved EurUnemployment Data"
			else
				puts "ERRORRRRSSSS"
			end






		@gbpCpidata=GbpCpi.new(releasedate: GbpCpi.release_date, actual: GbpCpi.actual, forecast: GbpCpi.forecast, previous: GbpCpi.previous, gbp_id: Gbp.last.id)

			if DateTime.parse(GbpCpi.release_date).to_date > GbpCpi.last.releasedate
				@gbpCpidata.save
				puts "Saved GbpCpi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@gbpGdpdata=GbpGdp.new(releasedate: GbpGdp.release_date, actual: GbpGdp.actual, forecast: GbpGdp.forecast, previous: GbpGdp.previous, gbp_id: Gbp.last.id)

			if DateTime.parse(GbpGdp.release_date).to_date > GbpGdp.last.releasedate
				@gbpGdpdata.save
				puts "Saved GbpGdp Data"
			else
				puts "ERRORRRRSSSS"
			end

		@gbpInflationdata=GbpInflation.new(releasedate: GbpInflation.release_date, actual: GbpInflation.actual, forecast: GbpInflation.forecast, previous: GbpInflation.previous, gbp_id: Gbp.last.id)

			if DateTime.parse(GbpInflation.release_date).to_date > GbpInflation.last.releasedate
				@gbpInflationdata.save
				puts "Saved GbpInflation Data"
			else
				puts "ERRORRRRSSSS"
			end

		@gbpInterestdata=GbpInterest.new(releasedate: GbpInterest.release_date, actual: GbpInterest.actual, forecast: GbpInterest.forecast, previous: GbpInterest.previous, gbp_id: Gbp.last.id)

			if DateTime.parse(GbpInterest.release_date).to_date > GbpInterest.last.releasedate
				@gbpInterestdata.save
				puts "Saved GbpInterest Data"
			else
				puts "ERRORRRRSSSS"
			end

		@gbpPmidata=GbpPmi.new(releasedate: GbpPmi.release_date, actual: GbpPmi.actual, forecast: GbpPmi.forecast, previous: GbpPmi.previous, gbp_id: Gbp.last.id)

			if DateTime.parse(GbpPmi.release_date).to_date > GbpPmi.last.releasedate
				@gbpPmidata.save
				puts "Saved GbpPmi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@gbpTradebalancedata=GbpTradebalance.new(releasedate: GbpTradebalance.release_date, actual: GbpTradebalance.actual, forecast: GbpTradebalance.forecast, previous: GbpTradebalance.previous, gbp_id: Gbp.last.id)

			if DateTime.parse(GbpTradebalance.release_date).to_date > GbpTradebalance.last.releasedate
				@gbpTradebalancedata.save
				puts "Saved GbpTradebalance Data"
			else
				puts "ERRORRRRSSSS"
			end

		@gbpUnemploymentdata=GbpUnemployment.new(releasedate: GbpUnemployment.release_date, actual: GbpUnemployment.actual, forecast: GbpUnemployment.forecast, previous: GbpUnemployment.previous, gbp_id: Gbp.last.id)

			if DateTime.parse(GbpUnemployment.release_date).to_date > GbpUnemployment.last.releasedate
				@gbpUnemploymentdata.save
				puts "Saved GbpUnemployment Data"
			else
				puts "ERRORRRRSSSS"
			end





		@jpyCpidata=JpyCpi.new(releasedate: JpyCpi.release_date, actual: JpyCpi.actual, forecast: JpyCpi.forecast, previous: JpyCpi.previous, jpy_id: Jpy.last.id)

			if DateTime.parse(JpyCpi.release_date).to_date > JpyCpi.last.releasedate
				@jpyCpidata.save
				puts "Saved JpyCpi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@jpyGdpdata=JpyGdp.new(releasedate: JpyGdp.release_date, actual: JpyGdp.actual, forecast: JpyGdp.forecast, previous: JpyGdp.previous, jpy_id: Jpy.last.id)

			if DateTime.parse(JpyGdp.release_date).to_date > JpyGdp.last.releasedate
				@jpyGdpdata.save
				puts "Saved JpyGdp Data"
			else
				puts "ERRORRRRSSSS"
			end

		@jpyInflationdata=JpyInflation.new(releasedate: JpyInflation.release_date, actual: JpyInflation.actual, forecast: JpyInflation.forecast, previous: JpyInflation.previous, jpy_id: Jpy.last.id)

			if DateTime.parse(JpyInflation.release_date).to_date > JpyInflation.last.releasedate
				@jpyInflationdata.save
				puts "Saved JpyInflation Data"
			else
				puts "ERRORRRRSSSS"
			end

		@jpyInterestdata=JpyInterest.new(releasedate: JpyInterest.release_date, actual: JpyInterest.actual, forecast: JpyInterest.forecast, previous: JpyInterest.previous, jpy_id: Jpy.last.id)

			if DateTime.parse(JpyInterest.release_date).to_date > JpyInterest.last.releasedate
				@jpyInterestdata.save
				puts "Saved JpyInterest Data"
			else
				puts "ERRORRRRSSSS"
			end

		@jpyPmidata=JpyPmi.new(releasedate: JpyPmi.release_date, actual: JpyPmi.actual, forecast: JpyPmi.forecast, previous: JpyPmi.previous, jpy_id: Jpy.last.id)

			if DateTime.parse(JpyPmi.release_date).to_date > JpyPmi.last.releasedate
				@jpyPmidata.save
				puts "Saved JpyPmi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@jpyTradebalancedata=JpyTradebalance.new(releasedate: JpyTradebalance.release_date, actual: JpyTradebalance.actual, forecast: JpyTradebalance.forecast, previous: JpyTradebalance.previous, jpy_id: Jpy.last.id)

			if DateTime.parse(JpyTradebalance.release_date).to_date > JpyTradebalance.last.releasedate
				@jpyTradebalancedata.save
				puts "Saved JpyTradebalance Data"
			else
				puts "ERRORRRRSSSS"
			end

		@jpyUnemploymentdata=JpyUnemployment.new(releasedate: JpyUnemployment.release_date, actual: JpyUnemployment.actual, forecast: JpyUnemployment.forecast, previous: JpyUnemployment.previous, jpy_id: Jpy.last.id)

			if DateTime.parse(JpyUnemployment.release_date).to_date > JpyUnemployment.last.releasedate
				@jpyUnemploymentdata.save
				puts "Saved JpyUnemployment Data"
			else
				puts "ERRORRRRSSSS"
			end





		@nzdCpidata=NzdCpi.new(releasedate: NzdCpi.release_date, actual: NzdCpi.actual, forecast: NzdCpi.forecast, previous: NzdCpi.previous, nzd_id: Nzd.last.id)

			if DateTime.parse(NzdCpi.release_date).to_date > NzdCpi.last.releasedate
				@nzdCpidata.save
				puts "Saved NzdCpi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@nzdGdpdata=NzdGdp.new(releasedate: NzdGdp.release_date, actual: NzdGdp.actual, forecast: NzdGdp.forecast, previous: NzdGdp.previous, nzd_id: Nzd.last.id)

			if DateTime.parse(NzdGdp.release_date).to_date > NzdGdp.last.releasedate
				@nzdGdpdata.save
				puts "Saved NzdGdp Data"
			else
				puts "ERRORRRRSSSS"
			end

		@nzdInflationdata=NzdInflation.new(releasedate: NzdInflation.release_date, actual: NzdInflation.actual, forecast: NzdInflation.forecast, previous: NzdInflation.previous, nzd_id: Nzd.last.id)

			if DateTime.parse(NzdInflation.release_date).to_date > NzdInflation.last.releasedate
				@nzdInflationdata.save
				puts "Saved NzdInflation Data"
			else
				puts "ERRORRRRSSSS"
			end

		@nzdInterestdata=NzdInterest.new(releasedate: NzdInterest.release_date, actual: NzdInterest.actual, forecast: NzdInterest.forecast, previous: NzdInterest.previous, nzd_id: Nzd.last.id)

			if DateTime.parse(NzdInterest.release_date).to_date > NzdInterest.last.releasedate
				@nzdInterestdata.save
				puts "Saved NzdInterest Data"
			else
				puts "ERRORRRRSSSS"
			end

		@nzdPmidata=NzdPmi.new(releasedate: NzdPmi.release_date, actual: NzdPmi.actual, forecast: NzdPmi.forecast, previous: NzdPmi.previous, nzd_id: Nzd.last.id)

			if DateTime.parse(NzdPmi.release_date).to_date > NzdPmi.last.releasedate
				@nzdPmidata.save
				puts "Saved NzdPmi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@nzdTradebalancedata=NzdTradebalance.new(releasedate: NzdTradebalance.release_date, actual: NzdTradebalance.actual, forecast: NzdTradebalance.forecast, previous: NzdTradebalance.previous, nzd_id: Nzd.last.id)

			if DateTime.parse(NzdTradebalance.release_date).to_date > NzdTradebalance.last.releasedate
				@nzdTradebalancedata.save
				puts "Saved NzdTradebalance Data"
			else
				puts "ERRORRRRSSSS"
			end

		@nzdUnemploymentdata=NzdUnemployment.new(releasedate: NzdUnemployment.release_date, actual: NzdUnemployment.actual, forecast: NzdUnemployment.forecast, previous: NzdUnemployment.previous, nzd_id: Nzd.last.id)

			if DateTime.parse(NzdUnemployment.release_date).to_date > NzdUnemployment.last.releasedate
				@nzdUnemploymentdata.save
				puts "Saved NzdUnemployment Data"
			else
				puts "ERRORRRRSSSS"
			end





		@usdCpidata=UsdCpi.new(releasedate: UsdCpi.release_date, actual: UsdCpi.actual, forecast: UsdCpi.forecast, previous: UsdCpi.previous, usd_id: Usd.last.id)

			if DateTime.parse(UsdCpi.release_date).to_date > UsdCpi.last.releasedate
				@usdCpidata.save
				puts "Saved UsdCpi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@usdGdpdata=UsdGdp.new(releasedate: UsdGdp.release_date, actual: UsdGdp.actual, forecast: UsdGdp.forecast, previous: UsdGdp.previous, usd_id: Usd.last.id)

			if DateTime.parse(UsdGdp.release_date).to_date > UsdGdp.last.releasedate
				@usdGdpdata.save
				puts "Saved UsdGdp Data"
			else
				puts "ERRORRRRSSSS"
			end

		@usdInflationdata=UsdInflation.new(releasedate: UsdInflation.release_date, actual: UsdInflation.actual, forecast: UsdInflation.forecast, previous: UsdInflation.previous, usd_id: Usd.last.id)

			if DateTime.parse(UsdInflation.release_date).to_date > UsdInflation.last.releasedate
				@usdInflationdata.save
				puts "Saved UsdInflation Data"
			else
				puts "ERRORRRRSSSS"
			end

		@usdInterestdata=UsdInterest.new(releasedate: UsdInterest.release_date, actual: UsdInterest.actual, forecast: UsdInterest.forecast, previous: UsdInterest.previous, usd_id: Usd.last.id)

			if DateTime.parse(UsdInterest.release_date).to_date > UsdInterest.last.releasedate
				@usdInterestdata.save
				puts "Saved UsdInterest Data"
			else
				puts "ERRORRRRSSSS"
			end

		@usdPmidata=UsdPmi.new(releasedate: UsdPmi.release_date, actual: UsdPmi.actual, forecast: UsdPmi.forecast, previous: UsdPmi.previous, usd_id: Usd.last.id)

			if DateTime.parse(UsdPmi.release_date).to_date > UsdPmi.last.releasedate
				@usdPmidata.save
				puts "Saved UsdPmi Data"
			else
				puts "ERRORRRRSSSS"
			end

		@usdTradebalancedata=UsdTradebalance.new(releasedate: UsdTradebalance.release_date, actual: UsdTradebalance.actual, forecast: UsdTradebalance.forecast, previous: UsdTradebalance.previous, usd_id: Usd.last.id)

			if DateTime.parse(UsdTradebalance.release_date).to_date > UsdTradebalance.last.releasedate
				@usdTradebalancedata.save
				puts "Saved UsdTradebalance Data"
			else
				puts "ERRORRRRSSSS"
			end

		@usdUnemploymentdata=UsdUnemployment.new(releasedate: UsdUnemployment.release_date, actual: UsdUnemployment.actual, forecast: UsdUnemployment.forecast, previous: UsdUnemployment.previous, usd_id: Usd.last.id)

			if DateTime.parse(UsdUnemployment.release_date).to_date > UsdUnemployment.last.releasedate
				@usdUnemploymentdata.save
				puts "Saved UsdUnemployment Data"
			else
				puts "ERRORRRRSSSS"
			end



	end



	def self.audGrade
		grade=0
		if AudGdp.actual.to_f>=AudGdp.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if AudGdp.actual.to_f>=AudGdp.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if AudPmi.actual.to_f>=AudPmi.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if AudPmi.actual.to_f>=AudPmi.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if AudPmi.actual.to_f>=50
			grade+=5
		else 
			grade-=5
		end

		
		if AudInterest.actual.to_f>=AudInterest.forecast.to_f
			grade+=10
		else 
			grade-=10
		end
		if AudInterest.actual.to_f>=AudInterest.previous.to_f
			grade+=5
		else 
			grade-=5
		end
		# 20
		if AudUnemployment.actual.to_f>=AudUnemployment.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if AudUnemployment.actual.to_f>=AudUnemployment.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		# 28
		if AudInflation.actual.to_f>=AudInflation.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if AudInflation.actual.to_f>=AudInflation.previous.to_f
			grade+=3
		else 
			grade-=3
		end

		if AudTradebalance.actual.to_f>=AudTradebalance.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if AudTradebalance.actual.to_f>=AudTradebalance.previous.to_f
			grade+=3
		else 
			grade-=3
		end



		return grade
	end


	def self.cadGrade
		grade=0
		if CadGdp.actual.to_f>=CadGdp.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if CadGdp.actual.to_f>=CadGdp.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if CadPmi.actual.to_f>=CadPmi.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if CadPmi.actual.to_f>=CadPmi.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if CadPmi.actual.to_f>=50
			grade+=5
		else 
			grade-=5
		end
		if CadInterest.actual.to_f>=CadInterest.forecast.to_f
			grade+=10
		else 
			grade-=10
		end
		if CadInterest.actual.to_f>=CadInterest.previous.to_f
			grade+=5
		else 
			grade-=5
		end
		if CadUnemployment.actual.to_f>=CadUnemployment.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if CadUnemployment.actual.to_f>=CadUnemployment.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if CadInflation.actual.to_f>=CadInflation.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if CadInflation.actual.to_f>=CadInflation.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if CadTradebalance.actual.to_f>=CadTradebalance.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if CadTradebalance.actual.to_f>=CadTradebalance.previous.to_f
			grade+=3
		else 
			grade-=3
		end

		return grade
	end



	def self.chfGrade
		grade=0
		if ChfGdp.actual.to_f>=ChfGdp.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if ChfGdp.actual.to_f>=ChfGdp.previous.to_f
			grade+=3
		else 
			grade-=3
		end

		if ChfPmi.actual.to_f>=ChfPmi.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if ChfPmi.actual.to_f>=ChfPmi.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if ChfPmi.actual.to_f>=50
			grade+=5
		else 
			grade-=5
		end
		if ChfInterest.actual.to_f>=ChfInterest.forecast.to_f
			grade+=10
		else 
			grade-=10
		end
		if ChfInterest.actual.to_f>=ChfInterest.previous.to_f
			grade+=5
		else 
			grade-=5
		end
		if ChfUnemployment.actual.to_f>=ChfUnemployment.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if ChfUnemployment.actual.to_f>=ChfUnemployment.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if ChfInflation.actual.to_f>=ChfInflation.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if ChfInflation.actual.to_f>=ChfInflation.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if ChfTradebalance.actual.to_f>=ChfTradebalance.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if ChfTradebalance.actual.to_f>=ChfTradebalance.previous.to_f
			grade+=3
		else 
			grade-=3
		end

		return grade
	end



	def self.eurGrade
		grade=0
		if EurGdp.actual.to_f>=EurGdp.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if EurGdp.actual.to_f>=EurGdp.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if EurPmi.actual.to_f>=EurPmi.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if EurPmi.actual.to_f>=EurPmi.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if EurPmi.actual.to_f>=50
			grade+=5
		else 
			grade-=5
		end
		if EurInterest.actual.to_f>=EurInterest.forecast.to_f
			grade+=10
		else 
			grade-=10
		end
		if EurInterest.actual.to_f>=EurInterest.previous.to_f
			grade+=5
		else 
			grade-=5
		end
		if EurUnemployment.actual.to_f>=EurUnemployment.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if EurUnemployment.actual.to_f>=EurUnemployment.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if EurInflation.actual.to_f>=EurInflation.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if EurInflation.actual.to_f>=EurInflation.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if EurTradebalance.actual.to_f>=EurTradebalance.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if EurTradebalance.actual.to_f>=EurTradebalance.previous.to_f
			grade+=3
		else 
			grade-=3
		end

		return grade
	end



	def self.gbpGrade
		grade=0
		if GbpGdp.actual.to_f>=GbpGdp.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if GbpGdp.actual.to_f>=GbpGdp.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if GbpPmi.actual.to_f>=GbpPmi.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if GbpPmi.actual.to_f>=GbpPmi.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if GbpPmi.actual.to_f>=50
			grade+=5
		else 
			grade-=5
		end
		if GbpInterest.actual.to_f>=GbpInterest.forecast.to_f
			grade+=10
		else 
			grade-=10
		end
		if GbpInterest.actual.to_f>=GbpInterest.previous.to_f
			grade+=5
		else 
			grade-=5
		end
		if GbpUnemployment.actual.to_f>=GbpUnemployment.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if GbpUnemployment.actual.to_f>=GbpUnemployment.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if GbpInflation.actual.to_f>=GbpInflation.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if GbpInflation.actual.to_f>=GbpInflation.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if GbpTradebalance.actual.to_f>=GbpTradebalance.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if GbpTradebalance.actual.to_f>=GbpTradebalance.previous.to_f
			grade+=3
		else 
			grade-=3
		end

		return grade
	end


	def self.jpyGrade
		grade=0
		if JpyGdp.actual.to_f>=JpyGdp.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if JpyGdp.actual.to_f>=JpyGdp.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if JpyPmi.actual.to_f>=JpyPmi.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if JpyPmi.actual.to_f>=JpyPmi.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if JpyPmi.actual.to_f>=50
			grade+=5
		else 
			grade-=5
		end
		if JpyInterest.actual.to_f>=JpyInterest.forecast.to_f
			grade+=10
		else 
			grade-=10
		end
		if JpyInterest.actual.to_f>=JpyInterest.previous.to_f
			grade+=5
		else 
			grade-=5
		end
		if JpyUnemployment.actual.to_f>=JpyUnemployment.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if JpyUnemployment.actual.to_f>=JpyUnemployment.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if JpyInflation.actual.to_f>=JpyInflation.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if JpyInflation.actual.to_f>=JpyInflation.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if JpyTradebalance.actual.to_f>=JpyTradebalance.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if JpyTradebalance.actual.to_f>=JpyTradebalance.previous.to_f
			grade+=3
		else 
			grade-=3
		end

		return grade
	end


	def self.nzdGrade
		grade=0
		if NzdGdp.actual.to_f>=NzdGdp.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if NzdGdp.actual.to_f>=NzdGdp.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if NzdPmi.actual.to_f>=NzdPmi.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if NzdPmi.actual.to_f>=NzdPmi.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if NzdPmi.actual.to_f>=50
			grade+=5
		else 
			grade-=5
		end
		if NzdInterest.actual.to_f>=NzdInterest.forecast.to_f
			grade+=10
		else 
			grade-=10
		end
		if NzdInterest.actual.to_f>=NzdInterest.previous.to_f
			grade+=5
		else 
			grade-=5
		end
		if NzdUnemployment.actual.to_f>=NzdUnemployment.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if NzdUnemployment.actual.to_f>=NzdUnemployment.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if NzdInflation.actual.to_f>=NzdInflation.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if NzdInflation.actual.to_f>=NzdInflation.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if NzdTradebalance.actual.to_f>=NzdTradebalance.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if NzdTradebalance.actual.to_f>=NzdTradebalance.previous.to_f
			grade+=3
		else 
			grade-=3
		end

		return grade
	end


	def self.usdGrade
		grade=0
		if UsdGdp.actual.to_f>=UsdGdp.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if UsdGdp.actual.to_f>=UsdGdp.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if UsdPmi.actual.to_f>=UsdPmi.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if UsdPmi.actual.to_f>=UsdPmi.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if UsdPmi.actual.to_f>=50
			grade+=5
		else 
			grade-=5
		end
		if UsdInterest.actual.to_f>=UsdInterest.forecast.to_f
			grade+=10
		else 
			grade-=10
		end
		if UsdInterest.actual.to_f>=UsdInterest.previous.to_f
			grade+=5
		else 
			grade-=5
		end
		if UsdUnemployment.actual.to_f>=UsdUnemployment.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if UsdUnemployment.actual.to_f>=UsdUnemployment.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if UsdInflation.actual.to_f>=UsdInflation.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if UsdInflation.actual.to_f>=UsdInflation.previous.to_f
			grade+=3
		else 
			grade-=3
		end
		if UsdTradebalance.actual.to_f>=UsdTradebalance.forecast.to_f
			grade+=5
		else 
			grade-=5
		end
		if UsdTradebalance.actual.to_f>=UsdTradebalance.previous.to_f
			grade+=3
		else 
			grade-=3
		end

		return grade
	end

	

			# def create
			#    @book = Book.new(book_params)
				
			#    if @book.save
			#       redirect_to :action => 'list'
			#    else
			#       @subjects = Subject.all
			#       render :action => 'new'
		 #   		end
		   
			# end

			# def book_params
		 #   	params.require(:books).permit(:title, :price, :subject_id, :description)
			# end


	# def self.display

	# 	puts "USD::::::"
	# 	puts "                 Release Date                  Actual                Forecast                Previous"
	# 	puts "GDP               #{UsdGdp.release_date}       #{UsdGdp.actual}      #{UsdGdp.forecast}      #{UsdGdp.previous}"
	# 	puts "Inflation         #{UsdInflation.release_date} #{UsdInflation.actual}#{UsdInflation.forecast}#{UsdInflation.previous}"
	# 	puts "Interest Rate     #{UsdInterest.release_date}  #{UsdInterest.actual} #{UsdInterest.forecast} #{UsdInterest.previous}"
	# 	puts "Pmi               #{UsdPmi.release_date}       #{UsdPmi.actual}      #{UsdPmi.forecast}      #{UsdPmi.previous}"
	# 	puts "Unemployment      #{UsdUnemployment.release_date}    #{UsdUnemployment.actual}   #{UsdUnemployment.forecast}     #{UsdUnemployment.previous}"






	# end



end
