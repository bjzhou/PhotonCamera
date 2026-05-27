.class public final Llvv;
.super Ljava/lang/Object;

# interfaces
.implements Lott;


# instance fields
.field final synthetic a:Lott;

.field final synthetic b:Loni;

.field final synthetic c:Llvy;

.field final synthetic d:Llzy;


# direct methods
.method public constructor <init>(Lott;Loni;Llvy;Llzy;)V
    .locals 0

    iput-object p1, p0, Llvv;->a:Lott;

    iput-object p2, p0, Llvv;->b:Loni;

    iput-object p3, p0, Llvv;->c:Llvy;

    iput-object p4, p0, Llvv;->d:Llzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final di(Lotu;Loku;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Llvv;->a:Lott;

    new-instance v1, Llvu;

    iget-object v2, p0, Llvv;->b:Loni;

    iget-object v3, p0, Llvv;->c:Llvy;

    iget-object v4, p0, Llvv;->d:Llzy;

    invoke-direct {v1, p1, v2, v3, v4}, Llvu;-><init>(Lotu;Loni;Llvy;Llzy;)V

    invoke-interface {v0, v1, p2}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method
