.class public abstract Looe;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
.end method

.method public abstract b(Ljava/util/Iterator;Loku;)Ljava/lang/Object;
.end method

.method public final c(Looc;Loku;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Looc;->a()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Looe;->b(Ljava/util/Iterator;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method
