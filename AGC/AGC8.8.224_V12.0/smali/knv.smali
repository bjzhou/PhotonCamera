.class public final Lknv;
.super Lknw;


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    invoke-direct {p0}, Lknw;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lknv;->a:D

    iput-wide p1, p0, Lknv;->b:D

    iput-wide p1, p0, Lknv;->c:D

    iput-wide p1, p0, Lknv;->d:D

    iput-wide p1, p0, Lknv;->e:D

    return-void
.end method


# virtual methods
.method public final a()Lknw;
    .locals 5

    new-instance v0, Lknv;

    iget-wide v1, p0, Lknv;->e:D

    invoke-direct {v0, v1, v2}, Lknv;-><init>(D)V

    iget-wide v3, p0, Lknv;->a:D

    iput-wide v3, v0, Lknv;->a:D

    iget-wide v3, p0, Lknv;->b:D

    iput-wide v3, v0, Lknv;->b:D

    iget-wide v3, p0, Lknv;->c:D

    iput-wide v3, v0, Lknv;->c:D

    iget-wide v3, p0, Lknv;->d:D

    iput-wide v3, v0, Lknv;->d:D

    iput-wide v1, v0, Lknv;->e:D

    return-object v0
.end method
