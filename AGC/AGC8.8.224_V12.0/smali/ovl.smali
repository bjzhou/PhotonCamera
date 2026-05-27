.class public final Lovl;
.super Ljava/lang/Object;

# interfaces
.implements Lola;


# instance fields
.field public final a:Ljava/lang/Throwable;

.field private final synthetic b:Lola;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lola;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lovl;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lovl;->b:Lola;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lovl;->b:Lola;

    invoke-interface {v0, p1, p2}, Lola;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Loky;)Lokx;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lovl;->b:Lola;

    invoke-interface {v0, p1}, Lola;->get(Loky;)Lokx;

    move-result-object p1

    return-object p1
.end method

.method public final minusKey(Loky;)Lola;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lovl;->b:Lola;

    invoke-interface {v0, p1}, Lola;->minusKey(Loky;)Lola;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lola;)Lola;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lovl;->b:Lola;

    invoke-interface {v0, p1}, Lola;->plus(Lola;)Lola;

    move-result-object p1

    return-object p1
.end method
