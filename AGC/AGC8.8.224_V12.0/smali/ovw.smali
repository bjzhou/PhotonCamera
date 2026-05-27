.class final Lovw;
.super Ljava/lang/Object;

# interfaces
.implements Lotu;


# instance fields
.field private final a:Lola;

.field private final b:Ljava/lang/Object;

.field private final c:Lomo;


# direct methods
.method public constructor <init>(Lotu;Lola;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lovw;->a:Lola;

    invoke-static {p2}, Loxd;->a(Lola;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lovw;->b:Ljava/lang/Object;

    new-instance p2, Lovv;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lovv;-><init>(Lotu;Loku;)V

    iput-object p2, p0, Lovw;->c:Lomo;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lovw;->a:Lola;

    iget-object v1, p0, Lovw;->b:Ljava/lang/Object;

    iget-object v2, p0, Lovw;->c:Lomo;

    invoke-static {v0, p1, v1, v2, p2}, Lone;->l(Lola;Ljava/lang/Object;Ljava/lang/Object;Lomo;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method
