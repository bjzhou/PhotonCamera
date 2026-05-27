.class public final Ladv;
.super Ljava/lang/Object;

# interfaces
.implements Laea;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Laie;I[B)V
    .locals 0

    iput p2, p0, Ladv;->b:I

    iput-object p1, p0, Ladv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Ladv;->b:I

    iput-object p1, p0, Ladv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Ladv;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lkxr;

    if-nez p1, :cond_2

    new-instance p1, Lkxr;

    const/4 v0, -0x3

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkxr;-><init>(I[B)V

    goto :goto_1

    :pswitch_0
    check-cast p1, Lkxr;

    sget-object v0, Ladw;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ladw;->d:Lxf;

    iget-object v2, p0, Ladv;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v2, Ladw;->d:Lxf;

    iget-object v3, p0, Ladv;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laea;

    invoke-interface {v2, p1}, Laea;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    iget-object v0, p0, Ladv;->a:Ljava/lang/Object;

    check-cast v0, Laie;

    invoke-virtual {v0, p1}, Laie;->o(Lkxr;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
