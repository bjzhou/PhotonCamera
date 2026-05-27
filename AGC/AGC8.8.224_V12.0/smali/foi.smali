.class final Lfoi;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field final synthetic a:Lfoj;

.field private b:Z

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lfoj;I)V
    .locals 0

    iput p2, p0, Lfoi;->c:I

    iput-object p1, p0, Lfoi;->a:Lfoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lfoi;->b:Z

    return-void
.end method


# virtual methods
.method public final synthetic bn(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lfoi;->c:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lgyw;

    iget-object p1, p0, Lfoi;->a:Lfoj;

    iget-object p1, p1, Lfoj;->k:Ljava/lang/Object;

    monitor-enter p1

    goto :goto_1

    :pswitch_0
    check-cast p1, Lgej;

    iget-object p1, p0, Lfoi;->a:Lfoj;

    iget-object v0, p1, Lfoj;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p1, p0, Lfoi;->b:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lfoi;->b:Z

    monitor-exit v0

    return-void

    :cond_0
    iget-object p1, p0, Lfoi;->a:Lfoj;

    iget-object p1, p1, Lfoj;->o:Ljew;

    const-string v1, "amethyst_edu"

    invoke-virtual {p1, v1}, Ljew;->X(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lfoi;->a:Lfoj;

    iget-object p1, p1, Lfoj;->m:Lczm;

    invoke-virtual {p1}, Lczm;->a()V

    iget-object p1, p0, Lfoi;->a:Lfoj;

    iget-object p1, p1, Lfoj;->o:Ljew;

    const-string v1, "amethyst_edu"

    invoke-virtual {p1, v1}, Ljew;->Z(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lfoi;->a:Lfoj;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lfoj;->w(I)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lfoi;->b:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lfoi;->b:Z

    monitor-exit p1

    return-void

    :cond_2
    iget-object v0, p0, Lfoi;->a:Lfoj;

    iget-object v1, v0, Lfoj;->c:Lcwh;

    sget-object v2, Lika;->c:Lika;

    invoke-virtual {v1, v2}, Lcwh;->a(Lika;)Lcwg;

    move-result-object v1

    instance-of v2, v1, Lcwe;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lfoj;->f:Lcwc;

    invoke-interface {v1}, Lcwg;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljws;

    invoke-virtual {v2, v1}, Ljwi;->bn(Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lfoj;->w(I)V

    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
