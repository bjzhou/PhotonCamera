.class public final synthetic Ldpz;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Runnable;I)V
    .locals 0

    iput p4, p0, Ldpz;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpz;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldpz;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldpz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkbc;Logd;Logd;I)V
    .locals 0

    iput p4, p0, Ldpz;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpz;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldpz;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldpz;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnow;Lkbc;Logd;I)V
    .locals 0

    iput p4, p0, Ldpz;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpz;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldpz;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldpz;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 6

    iget v0, p0, Ldpz;->d:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldpz;->b:Ljava/lang/Object;

    iget-object v1, p0, Ldpz;->a:Ljava/lang/Object;

    iget-object v2, p0, Ldpz;->c:Ljava/lang/Object;

    new-instance v3, Lcop;

    const/4 v4, 0x7

    invoke-direct {v3, v1, v2, v4}, Lcop;-><init>(Lkbc;Logd;I)V

    invoke-interface {v0, v3}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ldpz;->a:Ljava/lang/Object;

    iget-object v3, p0, Ldpz;->b:Ljava/lang/Object;

    iget-object v4, p0, Ldpz;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ldrh;

    invoke-direct {v5, v3, v1}, Ldrh;-><init>(Logd;I)V

    const-string v3, "GpuPostprocessingFaceObfuscationStartup"

    invoke-interface {v0, v3, v5}, Lkbc;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ldrh;

    invoke-direct {v3, v4, v1}, Ldrh;-><init>(Logd;I)V

    const-string v1, "GpuThumbnailFaceObfuscationStartup"

    invoke-interface {v0, v1, v3}, Lkbc;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldpz;->c:Ljava/lang/Object;

    iget-object v1, p0, Ldpz;->b:Ljava/lang/Object;

    iget-object v2, p0, Ldpz;->a:Ljava/lang/Object;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v3

    new-instance v4, Lcil;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v1, v2, v3}, Lcil;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lnph;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v3

    :pswitch_2
    iget-object v0, p0, Ldpz;->a:Ljava/lang/Object;

    iget-object v1, p0, Ldpz;->b:Ljava/lang/Object;

    iget-object v3, p0, Ldpz;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ldgg;

    const/16 v5, 0x11

    invoke-direct {v4, v1, v5}, Ldgg;-><init>(Logd;I)V

    const-string v1, "CpuFaceBeautificationStartup"

    invoke-interface {v0, v1, v4}, Lkbc;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ldgg;

    invoke-direct {v1, v3, v5}, Ldgg;-><init>(Logd;I)V

    const-string v3, "GpuFaceBeautificationStartup"

    invoke-interface {v0, v3, v1}, Lkbc;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ldpz;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
