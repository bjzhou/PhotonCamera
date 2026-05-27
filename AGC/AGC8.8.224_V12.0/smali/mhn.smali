.class final Lmhn;
.super Lmhp;


# instance fields
.field final synthetic a:Lmhq;


# direct methods
.method public constructor <init>(Lmhq;)V
    .locals 0

    iput-object p1, p0, Lmhn;->a:Lmhq;

    invoke-direct {p0, p1}, Lmhp;-><init>(Lmhq;)V

    return-void
.end method


# virtual methods
.method protected final a()F
    .locals 2

    iget-object v0, p0, Lmhn;->a:Lmhq;

    iget v1, v0, Lmhq;->r:F

    iget v0, v0, Lmhq;->t:F

    add-float/2addr v1, v0

    return v1
.end method
