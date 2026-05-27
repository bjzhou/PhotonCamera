.class final Lhsm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$Callback;


# instance fields
.field final synthetic a:Lhsn;


# direct methods
.method public constructor <init>(Lhsn;)V
    .locals 0

    iput-object p1, p0, Lhsm;->a:Lhsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickAnimationEnd()V
    .locals 3

    iget-object v0, p0, Lhsm;->a:Lhsn;

    sget-object v1, Lnmh;->a:Lnmh;

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lhsn;->c:Ljava/lang/Long;

    iget-object v0, p0, Lhsm;->a:Lhsn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhsn;->e(Z)V

    return-void
.end method

.method public final onLongPress()Z
    .locals 3

    iget-object v0, p0, Lhsm;->a:Lhsn;

    iget-object v0, v0, Lhsn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhsk;

    invoke-interface {v2}, Lhsk;->c()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
