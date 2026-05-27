.class public final Llmr;
.super Ljava/lang/Object;


# instance fields
.field public final a:[S

.field public final b:[S

.field public final c:I

.field public d:J


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    const/16 v0, 0x100

    new-array v1, v0, [S

    iput-object v1, p0, Llmr;->a:[S

    new-array v0, v0, [S

    iput-object v0, p0, Llmr;->b:[S

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    const v0, -0x2020203

    and-int/2addr p1, v0

    const v0, 0x1010101

    or-int/2addr p1, v0

    iput p1, p0, Llmr;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llmr;->d:J

    return-void
.end method
