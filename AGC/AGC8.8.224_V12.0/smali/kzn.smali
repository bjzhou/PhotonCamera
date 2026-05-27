.class final Lkzn;
.super Lkyp;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lkzo;


# direct methods
.method public constructor <init>(Lkzo;I)V
    .locals 0

    iput-object p1, p0, Lkzn;->b:Lkzo;

    iput p2, p0, Lkzn;->a:I

    invoke-direct {p0}, Lkyp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lkzd;

    iget-object v0, p0, Lkzn;->b:Lkzo;

    iget-object v1, v0, Lkzo;->c:[Lkzd;

    iget v2, p0, Lkzn;->a:I

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iput-boolean p1, v0, Lkzo;->d:Z

    iget-object p1, p0, Lkzn;->b:Lkzo;

    invoke-virtual {p1}, Lkzo;->a()V

    return-void
.end method
