.class public final Lfxb;
.super Ljava/lang/Object;

# interfaces
.implements Lfyy;


# instance fields
.field final synthetic a:Lfyv;

.field private final b:Lfyy;


# direct methods
.method public constructor <init>(Lfyv;Lfyy;[B)V
    .locals 0

    iput-object p1, p0, Lfxb;->a:Lfyv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfxb;->b:Lfyy;

    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lnou;)V
    .locals 2

    iget-object v0, p0, Lfxb;->a:Lfyv;

    iget-object v0, v0, Lfyv;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lkpb;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lkpb;->close()V

    return-void

    :cond_0
    iget-object v0, p0, Lfxb;->b:Lfyy;

    invoke-interface {v0, p1, p2}, Lfyy;->a(Lkpb;Lnou;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lfxb;->b:Lfyy;

    invoke-interface {v0}, Lfyy;->close()V

    return-void
.end method
