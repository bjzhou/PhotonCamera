.class public final Lbiu;
.super Lbja;


# direct methods
.method constructor <init>()V
    .locals 2

    new-instance v0, Lblu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lblu;-><init>(FF)V

    invoke-direct {p0, v0}, Lbja;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lbja;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Lbhs;
    .locals 2

    new-instance v0, Lbib;

    iget-object v1, p0, Lbiu;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lbib;-><init>(Ljava/util/List;)V

    return-object v0
.end method
