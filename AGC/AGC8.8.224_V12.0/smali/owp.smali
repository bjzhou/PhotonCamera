.class public abstract Lowp;
.super Lowv;


# instance fields
.field public final c:Lowr;

.field public d:Lowr;


# direct methods
.method public constructor <init>(Lowr;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lowv;-><init>([B)V

    iput-object p1, p0, Lowp;->c:Lowr;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lowr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lowp;->c:Lowr;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lowp;->d:Lowr;

    :goto_1
    if-eqz v0, :cond_2

    iget-object p1, p1, Lowr;->c:Loop;

    invoke-virtual {p1, p0, v0}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lowp;->c:Lowr;

    iget-object p2, p0, Lowp;->d:Lowr;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lowr;->o(Lowr;)V

    :cond_2
    return-void
.end method
