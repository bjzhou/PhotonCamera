.class final Lots;
.super Ljava/lang/Object;

# interfaces
.implements Lott;


# instance fields
.field public final a:Lomk;

.field public final b:Lomo;

.field private final c:Lott;


# direct methods
.method public constructor <init>(Lott;Lomk;Lomo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lots;->c:Lott;

    iput-object p2, p0, Lots;->a:Lomk;

    iput-object p3, p0, Lots;->b:Lomo;

    return-void
.end method


# virtual methods
.method public final di(Lotu;Loku;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lonk;

    invoke-direct {v0}, Lonk;-><init>()V

    sget-object v1, Lovo;->a:Loxb;

    iput-object v1, v0, Lonk;->a:Ljava/lang/Object;

    iget-object v1, p0, Lots;->c:Lott;

    new-instance v2, Lotr;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lotr;-><init>(Lots;Lonk;Lotu;I)V

    invoke-interface {v1, v2, p2}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method
