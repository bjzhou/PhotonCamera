.class public final Lgqv;
.super Ljava/lang/Object;

# interfaces
.implements Lgqk;


# instance fields
.field public final a:Lnph;

.field public b:Lgqr;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lgqv;->a:Lnph;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lgqv;->b:Lgqr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgqv;->a:Lnph;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lgqv;->a:Lnph;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
