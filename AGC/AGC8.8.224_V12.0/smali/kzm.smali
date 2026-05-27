.class final Lkzm;
.super Lkyp;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lkzo;


# direct methods
.method public constructor <init>(Lkzo;I)V
    .locals 0

    iput-object p1, p0, Lkzm;->b:Lkzo;

    iput p2, p0, Lkzm;->a:I

    invoke-direct {p0}, Lkyp;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lkzm;->b:Lkzo;

    iget-object v1, v0, Lkzo;->b:[Ljava/lang/Object;

    iget v2, p0, Lkzm;->a:I

    aput-object p1, v1, v2

    invoke-virtual {v0}, Lkzo;->a()V

    return-void
.end method
