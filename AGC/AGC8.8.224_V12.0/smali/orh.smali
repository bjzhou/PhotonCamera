.class public final Lorh;
.super Lowp;


# instance fields
.field final synthetic a:Lori;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lowr;Lori;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lorh;->a:Lori;

    iput-object p3, p0, Lorh;->b:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lowp;-><init>(Lowr;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lowr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lorh;->a:Lori;

    invoke-virtual {p1}, Lori;->dd()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorh;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lowo;->a:Ljava/lang/Object;

    return-object p1
.end method
