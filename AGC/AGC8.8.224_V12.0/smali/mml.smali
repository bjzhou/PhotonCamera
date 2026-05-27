.class public final synthetic Lmml;
.super Ljava/lang/Object;

# interfaces
.implements Ljon;


# instance fields
.field public final synthetic a:Lmmt;

.field public final synthetic b:Lkgd;


# direct methods
.method public synthetic constructor <init>(Lmmt;Lkgd;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmml;->a:Lmmt;

    iput-object p2, p0, Lmml;->b:Lkgd;

    return-void
.end method


# virtual methods
.method public final a(Ljot;)V
    .locals 2

    iget-object p1, p0, Lmml;->a:Lmmt;

    iget-object v0, p0, Lmml;->b:Lkgd;

    iget-object v1, p1, Lmmt;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Lmmt;->c:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
