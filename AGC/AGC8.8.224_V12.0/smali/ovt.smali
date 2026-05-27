.class public final Lovt;
.super Ljava/lang/Object;

# interfaces
.implements Lotu;


# instance fields
.field private final a:Lotj;


# direct methods
.method public constructor <init>(Lotj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lovt;->a:Lotj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lovt;->a:Lotj;

    invoke-interface {v0, p1, p2}, Lotj;->q(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method
