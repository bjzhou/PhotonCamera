.class final Loks;
.super Lonf;

# interfaces
.implements Lomo;


# instance fields
.field final synthetic a:[Lola;

.field final synthetic b:Lonj;


# direct methods
.method public constructor <init>([Lola;Lonj;)V
    .locals 0

    iput-object p1, p0, Loks;->a:[Lola;

    iput-object p2, p0, Loks;->b:Lonj;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lojk;

    check-cast p2, Lokx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Loks;->a:[Lola;

    iget-object v0, p0, Loks;->b:Lonj;

    iget v1, v0, Lonj;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lonj;->a:I

    aput-object p2, p1, v1

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method
