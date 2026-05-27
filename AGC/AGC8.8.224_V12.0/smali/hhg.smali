.class final Lhhg;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public final c:Lnph;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lhhg;->c:Lnph;

    return-void
.end method
