.class final Lmna;
.super Lnnb;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lnnb;-><init>()V

    iput p1, p0, Lmna;->a:I

    return-void
.end method


# virtual methods
.method protected final f(Lnou;)Z
    .locals 0

    invoke-super {p0, p1}, Lnnb;->f(Lnou;)Z

    move-result p1

    return p1
.end method
