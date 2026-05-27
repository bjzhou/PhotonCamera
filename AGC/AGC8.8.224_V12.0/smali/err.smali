.class public final Lerr;
.super Ljava/lang/Object;

# interfaces
.implements Lbnu;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcgu;I)V
    .locals 0

    iput p2, p0, Lerr;->b:I

    iput-object p1, p0, Lerr;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lert;I)V
    .locals 0

    iput p2, p0, Lerr;->b:I

    iput-object p1, p0, Lerr;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()V
    .locals 2

    iget-object v0, p0, Lerr;->a:Ljava/lang/Object;

    check-cast v0, Lert;

    iget-boolean v1, v0, Lert;->w:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lert;->w:Z

    iget-boolean v1, v0, Lert;->z:Z

    if-eqz v1, :cond_1

    const-string v1, "CameraActivityController: Fatal error during onPause!"

    invoke-virtual {v0, v1}, Lert;->u(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, v0, Lert;->d:Ldns;

    invoke-interface {v0}, Ldns;->h()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget v0, p0, Lerr;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcgu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "cameraExceptionCallback.onCameraError"

    const/16 v2, 0x8a

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Lerr;->a:Ljava/lang/Object;

    check-cast v0, Lcgu;

    iget-object v0, v0, Lcgu;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lert;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x746

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Camera error callback. error=%d"

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V

    return-void

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbnv;

    invoke-virtual {v1, p1}, Lbnv;->a(I)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    .locals 12

    move-object v0, p0

    move-object v4, p1

    iget v1, v0, Lerr;->b:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcgu;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "cameraExceptionCallback.onCameraException"

    const/16 v3, 0x8b

    invoke-static {v1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v1, v0, Lerr;->a:Ljava/lang/Object;

    check-cast v1, Lcgu;

    iget-object v1, v1, Lcgu;->f:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    sget-object v1, Lert;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Camera Exception"

    const/16 v3, 0x747

    invoke-static {v1, v2, v3, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object v1, v0, Lerr;->a:Ljava/lang/Object;

    check-cast v1, Lert;

    iget-object v1, v1, Lert;->t:Lfbz;

    sget v2, Lmvv;->d:I

    const/4 v2, 0x5

    const/4 v7, 0x0

    sget-object v9, Lmyu;->a:Lmvv;

    sget-object v10, Lkbo;->m:Lkbo;

    const/4 v11, 0x0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move/from16 v6, p4

    move-object v8, v9

    invoke-interface/range {v1 .. v11}, Lfbz;->V(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lkbo;Z)V

    invoke-direct {p0}, Lerr;->d()V

    return-void

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbnv;

    move-object v3, p2

    move v5, p3

    move/from16 v6, p4

    invoke-virtual {v2, p1, p2, p3, v6}, Lbnv;->b(Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/RuntimeException;)V
    .locals 12

    iget v0, p0, Lerr;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcgu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "cameraExceptionCallback.onDispatchThreadException"

    const/16 v2, 0x8c

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Lerr;->a:Ljava/lang/Object;

    check-cast v0, Lcgu;

    iget-object v0, v0, Lcgu;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lert;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "DispatchThread Exception"

    const/16 v2, 0x748

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object v0, p0, Lerr;->a:Ljava/lang/Object;

    check-cast v0, Lert;

    iget-object v1, v0, Lert;->t:Lfbz;

    sget v0, Lmvv;->d:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    sget-object v9, Lmyu;->a:Lmvv;

    sget-object v10, Lkbo;->m:Lkbo;

    const/4 v11, 0x0

    move-object v4, p1

    move-object v8, v9

    invoke-interface/range {v1 .. v11}, Lfbz;->V(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lkbo;Z)V

    invoke-direct {p0}, Lerr;->d()V

    return-void

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbnv;

    invoke-virtual {v1, p1}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
