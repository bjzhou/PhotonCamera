.class public final synthetic Lhow;
.super Ljava/lang/Object;

# interfaces
.implements Lhmz;


# instance fields
.field public final synthetic a:Lhoz;


# direct methods
.method public synthetic constructor <init>(Lhoz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhow;->a:Lhoz;

    return-void
.end method


# virtual methods
.method public final bG(Lhna;)V
    .locals 4

    iget-object v0, p0, Lhow;->a:Lhoz;

    iget-object v0, v0, Lhoz;->l:Lmvv;

    move-object v1, v0

    check-cast v1, Lmyu;

    iget v1, v1, Lmyu;->c:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhmz;

    invoke-interface {v3, p1}, Lhmz;->bG(Lhna;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
