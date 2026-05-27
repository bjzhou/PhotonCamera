.class public final synthetic Llaz;
.super Ljava/lang/Object;

# interfaces
.implements Lkye;


# instance fields
.field public final synthetic a:Llfg;

.field public final synthetic b:Lkym;


# direct methods
.method public synthetic constructor <init>(Llfg;Lkym;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llaz;->a:Llfg;

    iput-object p2, p0, Llaz;->b:Lkym;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llaz;->a:Llfg;

    iget-object v1, p0, Llaz;->b:Lkym;

    check-cast p1, Llcn;

    invoke-static {p1, v0, v1}, Llcu;->b(Llcn;Llfg;Lkym;)Llcn;

    move-result-object p1

    return-object p1
.end method
