.class public final synthetic Leev;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Leew;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Leew;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leev;->a:Leew;

    iput-boolean p2, p0, Leev;->b:Z

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Leev;->a:Leew;

    iget-boolean v1, p0, Leev;->b:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v1, :cond_0

    sget-object p1, Lnbk;->a:Lnbc;

    iget-object p1, v0, Leew;->a:Lken;

    iget-object v0, v0, Leew;->b:Lkfj;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lken;->f(Lkfj;Z)V

    :cond_0
    return-void
.end method
