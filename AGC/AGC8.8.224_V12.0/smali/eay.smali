.class public final Leay;
.super Ljava/lang/Object;

# interfaces
.implements Lecs;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lewa;


# direct methods
.method public constructor <init>(Lewa;Lnph;[B)V
    .locals 0

    iput-object p1, p0, Leay;->b:Lewa;

    iput-object p2, p0, Leay;->a:Lnph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/googlex/gcam/InterleavedImageU16;)V
    .locals 2

    iget-object v0, p0, Leay;->b:Lewa;

    iget-object v0, v0, Lewa;->h:Ljava/lang/Object;

    const-string v1, "MergedPdCallback"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Leay;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Leay;->b:Lewa;

    iget-object p1, p1, Lewa;->h:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final b(Lecq;)V
    .locals 3

    iget-object v0, p0, Leay;->a:Lnph;

    new-instance v1, Lkdf;

    const-string v2, "Error merging PD data"

    invoke-direct {v1, v2, p1}, Lkdf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
