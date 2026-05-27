.class public final Ljmy;
.super Ljava/lang/Object;

# interfaces
.implements Ljfa;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/location/Location;I)V
    .locals 0

    iput p2, p0, Ljmy;->b:I

    iput-object p1, p0, Ljmy;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljmf;I)V
    .locals 0

    iput p2, p0, Ljmy;->b:I

    iput-object p1, p0, Ljmy;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljsp;I)V
    .locals 0

    iput p2, p0, Ljmy;->b:I

    iput-object p1, p0, Ljmy;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ljmy;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljqa;

    iget-object v0, p0, Ljmy;->a:Ljava/lang/Object;

    check-cast v0, Ljsp;

    invoke-interface {p1, v0}, Ljqa;->a(Ljsp;)V

    return-void

    :pswitch_0
    check-cast p1, Ljmi;

    iget-object v0, p0, Ljmy;->a:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-interface {p1, v0}, Ljmi;->b(Landroid/location/Location;)V

    return-void

    :pswitch_1
    check-cast p1, Ljmi;

    iget-object p1, p0, Ljmy;->a:Ljava/lang/Object;

    check-cast p1, Ljmf;

    iget-object v0, p1, Ljmf;->a:Ljmt;

    monitor-enter v0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, v0, Ljmt;->b:Z

    iget-object p1, v0, Ljmt;->a:Ljfb;

    iget-object p1, p1, Ljfb;->b:Ljez;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Ljmt;->c:Ljmu;

    const/16 v1, 0x989

    invoke-virtual {v0, p1, v1}, Ljde;->f(Ljez;I)Ljot;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Ljmy;->b:I

    return-void
.end method
