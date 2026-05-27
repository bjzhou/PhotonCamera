.class public final Lavw;
.super Lavv;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lavv;-><init>()V

    iput-object p1, p0, Lavw;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lomk;)Lavv;
    .locals 1

    iget-object v0, p0, Lavw;->a:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    new-instance p2, Lavu;

    iget-object v0, p0, Lavw;->a:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Lavu;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lavw;->a:Ljava/lang/Object;

    return-object v0
.end method
