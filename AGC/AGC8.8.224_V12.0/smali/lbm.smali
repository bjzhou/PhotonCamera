.class final Llbm;
.super Lkyp;


# instance fields
.field final synthetic a:Llbn;


# direct methods
.method public constructor <init>(Llbn;)V
    .locals 0

    iput-object p1, p0, Llbm;->a:Llbn;

    invoke-direct {p0}, Lkyp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkyd;

    iget-object p1, p0, Llbm;->a:Llbn;

    iget-object p1, p1, Llbn;->d:Lkyv;

    invoke-virtual {p1}, Lkyv;->close()V

    return-void
.end method
