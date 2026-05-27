.class abstract Lj$/util/stream/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:[J


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public final count()J
    .locals 4

    iget v0, p0, Lj$/util/stream/e;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lj$/util/stream/e;->a:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/e;->c:[J

    aget-wide v0, v1, v0

    iget v2, p0, Lj$/util/stream/e;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method
