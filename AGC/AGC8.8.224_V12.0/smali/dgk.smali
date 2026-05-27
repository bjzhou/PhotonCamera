.class public final Ldgk;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Ldgk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgk;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Ldgk;
    .locals 2

    new-instance v0, Ldgk;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ldgk;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ldgk;->b:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldgk;->a:Loiw;

    check-cast v0, Lefa;

    invoke-virtual {v0}, Lefa;->b()Ljvs;

    move-result-object v0

    new-instance v1, Ldso;

    invoke-direct {v1, v0, v3}, Ldso;-><init>(Ljvs;I)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldhc;->i:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldhc;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    return-object v2

    :pswitch_2
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldhc;->h:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldhc;->g:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldhc;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    return-object v2

    :pswitch_5
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldhc;->c:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    sget-object v1, Ldhc;->d:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v3, v3, 0x4

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-instance v0, Ldne;

    invoke-direct {v0}, Ldne;-><init>()V

    return-object v0

    :pswitch_7
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Ldna;

    invoke-direct {v1, v0}, Ldna;-><init>(Ldhi;)V

    return-object v1

    :pswitch_8
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvk;

    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {v1, v0}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ljvk;)V

    return-object v1

    :pswitch_9
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget v1, Ldha;->a:I

    invoke-interface {v0}, Ldhi;->c()V

    return-object v2

    :pswitch_a
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Ldmi;

    invoke-direct {v1, v0}, Ldmi;-><init>(Ldhi;)V

    return-object v1

    :pswitch_b
    iget-object v0, p0, Ldgk;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;

    const-string v2, "shot_db"

    invoke-static {v0, v1, v2}, Laek;->g(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Laps;

    move-result-object v0

    invoke-virtual {v0}, Laps;->d()V

    invoke-virtual {v0}, Laps;->a()Lapt;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlj;

    new-instance v2, Ldld;

    invoke-direct {v2, v0, v1}, Ldld;-><init>(Ldlj;I)V

    return-object v2

    :pswitch_d
    iget-object v0, p0, Ldgk;->a:Loiw;

    check-cast v0, Ldll;

    invoke-virtual {v0}, Ldll;->a()Ldlk;

    move-result-object v0

    invoke-virtual {v0}, Ldlk;->m()V

    return-object v0

    :pswitch_e
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Lequ;

    invoke-direct {v1, v0, v3}, Lequ;-><init>(Ldhi;I)V

    return-object v1

    :pswitch_f
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget v1, Ldkb;->a:I

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    sget-object v0, Lmza;->a:Lmza;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Ldgk;->a:Loiw;

    check-cast v0, Lelv;

    invoke-virtual {v0}, Lelv;->a()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ldjn;

    invoke-direct {v1, v0}, Ldjn;-><init>(Landroid/content/ContentResolver;)V

    return-object v1

    :pswitch_11
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfbz;

    new-instance v1, Lcvr;

    invoke-direct {v1, v0}, Lcvr;-><init>(Lfbz;)V

    return-object v1

    :pswitch_13
    iget-object v0, p0, Ldgk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Ldgj;

    invoke-direct {v1, v0}, Ldgj;-><init>(Ldhi;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
