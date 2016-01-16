class Read
  def oldest_unread_forms(count, sort = {})
      forms = Forms.all
      forms = forms.order(id: :asc).where(przeczytane: false).limit(count).update_all(przeczytane: true)
      forms = forms.where(kategoria: sort[:kategoria]) if sort[:kategoria].present?
      forms = forms.where(koszt: sort[:koszt]) if sort[:koszt].present?
      forms = forms.where(email: sort[:email]) if sort[:email].present?
  end
end