.class final Leoo;
.super Ljava/lang/Object;

# interfaces
.implements Leqa;


# instance fields
.field final synthetic a:Leqa;

.field final synthetic b:I

.field final synthetic c:Leop;


# direct methods
.method public constructor <init>(Leop;Leqa;I)V
    .locals 0

    iput-object p1, p0, Leoo;->c:Leop;

    iput-object p2, p0, Leoo;->a:Leqa;

    iput p3, p0, Leoo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lnsx;)V
    .locals 1

    iget-object v0, p0, Leoo;->a:Leqa;

    invoke-interface {v0, p1}, Leqa;->b(Lnsx;)V

    return-void
.end method

.method public final d(Z)V
    .locals 2

    iget-object p1, p0, Leoo;->a:Leqa;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Leqa;->d(Z)V

    iget-object p1, p0, Leoo;->c:Leop;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Leoo;->c:Leop;

    iget-object v0, v0, Leop;->e:Ljava/util/HashMap;

    iget v1, p0, Leoo;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
