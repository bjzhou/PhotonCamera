.class public final Lmc;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field final b:I

.field c:J

.field d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmc;->a:Ljava/util/ArrayList;

    const/4 v0, 0x5

    iput v0, p0, Lmc;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmc;->c:J

    iput-wide v0, p0, Lmc;->d:J

    return-void
.end method
