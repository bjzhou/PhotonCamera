.class public final synthetic Ldro;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnph;

.field public final synthetic b:Llde;


# direct methods
.method public synthetic constructor <init>(Lnph;Llde;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldro;->a:Lnph;

    iput-object p2, p0, Ldro;->b:Llde;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldro;->a:Lnph;

    iget-object v1, p0, Ldro;->b:Llde;

    invoke-virtual {v1}, Llbk;->c()Llcv;

    move-result-object v1

    check-cast v1, Llda;

    iget v1, v1, Llcw;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
