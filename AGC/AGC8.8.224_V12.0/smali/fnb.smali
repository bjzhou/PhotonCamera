.class public final Lfnb;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;I)V
    .locals 0

    iput p2, p0, Lfnb;->b:I

    iput-object p1, p0, Lfnb;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfng;I)V
    .locals 0

    iput p2, p0, Lfnb;->b:I

    iput-object p1, p0, Lfnb;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgpr;I)V
    .locals 0

    iput p2, p0, Lfnb;->b:I

    iput-object p1, p0, Lfnb;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic bn(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lfnb;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lfnb;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lhxs;->a(I)Lhxs;

    move-result-object p1

    check-cast v0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->b:Lhxo;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhxp;

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lhxo;->a(Lhxp;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lfnb;->a:Ljava/lang/Object;

    check-cast p1, Lgpr;

    iget-object v0, p1, Lgpr;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lfnb;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lgpr;

    iget-boolean v1, v1, Lgpr;->e:Z

    if-nez v1, :cond_0

    check-cast p1, Lgpr;

    iget-object p1, p1, Lgpr;->c:Ljvs;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfnb;->a:Ljava/lang/Object;

    check-cast p1, Lgpr;

    invoke-virtual {p1}, Lgpr;->c()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lfnb;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget v0, p1, Lfng;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lfng;->P:I

    if-nez v0, :cond_1

    iget-object p1, p1, Lfng;->B:Landroid/os/Handler;

    new-instance v0, Lfib;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lfib;-><init>(Lfnb;I[B)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lfnb;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    invoke-virtual {v0, p1}, Lfng;->D(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
