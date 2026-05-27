.class public final synthetic Levs;
.super Ljava/lang/Object;

# interfaces
.implements Lant;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Levt;I)V
    .locals 0

    iput p2, p0, Levs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levs;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfx;I)V
    .locals 0

    iput p2, p0, Levs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levs;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lva;I[B[B[B[B[B)V
    .locals 0

    iput p2, p0, Levs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levs;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    iget v0, p0, Levs;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Levs;->a:Ljava/lang/Object;

    check-cast v0, Lhfx;

    iget-object v3, v0, Lhfx;->h:Lmvq;

    invoke-virtual {v3}, Lmvq;->f()Lmvv;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lmyu;

    iget v4, v4, Lmyu;->c:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Levs;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/preference/ListPreference;

    iget-object v3, v1, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/preference/ListPreference;->k(Ljava/lang/String;)I

    move-result v3

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroidx/preference/ListPreference;->k(Ljava/lang/String;)I

    move-result p2

    iget-object v4, v1, Landroidx/preference/ListPreference;->g:[Ljava/lang/CharSequence;

    aget-object v4, v4, p2

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    check-cast v0, Levt;

    iget-object v0, v0, Levt;->ae:Levu;

    iget-object v0, v0, Levu;->h:Lfbz;

    iget-object p1, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    iget-object v1, v1, Landroidx/preference/ListPreference;->g:[Ljava/lang/CharSequence;

    aget-object v3, v1, v3

    aget-object p2, v1, p2

    invoke-interface {v0, p1, v3, p2}, Lfbz;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :pswitch_1
    iget-object p1, p0, Levs;->a:Ljava/lang/Object;

    check-cast p1, Levt;

    iget-object p1, p1, Levt;->ae:Levu;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p1, p1, Levu;->i:Ljwb;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    return v2

    :pswitch_2
    iget-object p1, p0, Levs;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    move-object v0, p1

    check-cast v0, Lva;

    iget-object v0, v0, Lva;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lva;->B(Landroid/content/Context;)V

    :cond_0
    check-cast p1, Lva;

    iget-object p1, p1, Lva;->c:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lfbz;->h(Z)V

    return v2

    :pswitch_3
    iget-object v0, p0, Levs;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Levt;

    iget-object v4, v3, Levt;->ae:Levu;

    iget-object v4, v4, Levu;->h:Lfbz;

    iget-object p1, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    iget-object v5, v3, Levt;->af:Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    iget-boolean v5, v5, Landroidx/preference/TwoStatePreference;->a:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, p1, v5, p2}, Lfbz;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3}, Levt;->D()Z

    move-result p1

    if-nez p1, :cond_1

    check-cast v0, Lbw;

    invoke-virtual {v0}, Lbw;->getActivity()Lbz;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v0, p2, v1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v0, p2, v2

    invoke-virtual {p1, p2, v2}, Lbz;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return v2

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;

    iget-object v8, v0, Lhfx;->c:Lgzi;

    iget-object v7, v7, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lgzi;->m(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lhfx;->e:Lgzn;

    sget-object v4, Lgzd;->T:Lgzr;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v3, v0, Lhfx;->d:Lgzm;

    sget-object v4, Lgzd;->P:Lgzr;

    invoke-interface {v3, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    if-le v6, v4, :cond_5

    iget-object v3, v0, Lhfx;->n:Landroid/widget/Toast;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_4
    iget-object v3, v0, Lhfx;->a:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    const v5, 0x7f120008

    invoke-static {v5, v4, v2}, Ljpw;->i(II[Ljava/lang/Object;)Ligf;

    move-result-object v2

    iget-object v4, v0, Lhfx;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v2, v4}, Ligf;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, v0, Lhfx;->n:Landroid/widget/Toast;

    iget-object v2, v0, Lhfx;->n:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move-object v2, p1

    check-cast v2, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;

    invoke-virtual {v0, v2, v1}, Lhfx;->a(Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    if-gtz v6, :cond_6

    invoke-virtual {v0, v1}, Lhfx;->b(Z)V

    goto :goto_1

    :cond_6
    goto :goto_1

    :cond_7
    invoke-virtual {v0, v2}, Lhfx;->b(Z)V

    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_8

    iget-object v2, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    iget-object v3, v0, Lhfx;->c:Lgzi;

    invoke-virtual {v3, v2}, Lgzi;->m(Ljava/lang/String;)Z

    iget-object v2, v0, Lhfx;->g:Lfbz;

    iget-object p1, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    iget-object v0, v0, Lhfx;->c:Lgzi;

    invoke-virtual {v0, p1}, Lgzi;->m(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, p1, v0, p2}, Lfbz;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
