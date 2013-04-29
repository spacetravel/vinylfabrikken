#encoding: utf-8

ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
   
    # Here is an example of a simple dashboard with columns and panels.
    #



    columns do
      column do
        panel "Informasjon" do
           para "Velkommen til Vinylfabrikken administrasjon"
        end
      end
    end
    columns do
      column do
        panel "Nyeste forsideplugger" do
          table_for Plug.order("created_at desc").limit(5) do
            column "Overskrift", :title do |news|
              link_to news.title, edit_admin_forsideplugg_path(news)
            end
            column "Opprettet", :created_at, :sortable => :created_at do |news|
              (time_ago_in_words news.created_at) + " siden"
            end
          end
          strong { link_to "Se alle forsidepluggene", admin_forsidepluggs_path }
        end
      end

      column do
        panel "Nyeste sider" do
          table_for Article.order("created_at desc").limit(5) do
            column "Overskrift", :title do |news|
              link_to news.title, edit_admin_artikkel_path(news)
            end
            column "Opprettet", :created_at, :sortable => :created_at do |news|
              (time_ago_in_words news.created_at) + " siden"
            end
          end
          strong { link_to "Se alle sidene", admin_artikkels_path }
        end
      end

    end

    columns do
      column do
        panel "Nyeste priser" do
          table_for Price.order("created_at desc").limit(5) do
            column "Produkt", :name do |news|
              link_to news.name, edit_admin_pri_path(news)
            end
            column "Opprettet", :created_at, :sortable => :created_at do |news|
              (time_ago_in_words news.created_at) + " siden"
            end
          end
          strong { link_to "Se alle prisene", admin_pris_path }
        end
      end

      column do
        panel "Nyeste spørsmål & svar" do
          table_for Faq.order("created_at desc").limit(5) do
            column "Spørsmål", :question do |news|
              link_to news.question, edit_admin_faq_path(news)
            end
            column "Opprettet", :created_at, :sortable => :created_at do |news|
              (time_ago_in_words news.created_at) + " siden"
            end
          end
          strong { link_to "Se alle spørsmål & svar", admin_faqs_path }
        end
      end

    end

  end # content
end
