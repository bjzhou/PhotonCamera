.class public abstract Lknf;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c([Lknh;Loiw;)Lknf;
    .locals 0

    array-length p0, p0

    if-nez p0, :cond_0

    new-instance p0, Lkne;

    invoke-direct {p0, p1}, Lkne;-><init>(Loiw;)V

    return-object p0

    :cond_0
    new-instance p0, Lknd;

    invoke-direct {p0, p1}, Lknd;-><init>(Loiw;)V

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Lkni;)V
.end method

.method public abstract b(Lkns;Lkte;)V
.end method
