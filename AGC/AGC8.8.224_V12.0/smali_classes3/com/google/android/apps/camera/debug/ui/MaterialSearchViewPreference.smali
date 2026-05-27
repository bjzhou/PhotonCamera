.class public Lcom/google/android/apps/camera/debug/ui/MaterialSearchViewPreference;
.super Landroidx/preference/Preference;


# instance fields
.field public a:Landroid/widget/SearchView;

.field public b:Landroid/widget/SearchView$OnQueryTextListener;

.field public c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/apps/camera/debug/ui/MaterialSearchViewPreference;->c:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final a(Laor;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Laor;)V

    iget-object p1, p1, Laor;->a:Landroid/view/View;

    const v0, 0x7f0b02fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/google/android/apps/camera/debug/ui/MaterialSearchViewPreference;->a:Landroid/widget/SearchView;

    new-instance v0, Ldmk;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ldmk;-><init>(Lcom/google/android/apps/camera/debug/ui/MaterialSearchViewPreference;I)V

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/debug/ui/MaterialSearchViewPreference;->a:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/google/android/apps/camera/debug/ui/MaterialSearchViewPreference;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method
