.class public final Logn;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# instance fields
.field private final a:Loiw;


# direct methods
.method private constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Logn;->a:Loiw;

    return-void
.end method

.method public static b(Loiw;)Loiw;
    .locals 1

    new-instance v0, Logn;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Logn;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Logd;
    .locals 1

    iget-object v0, p0, Logn;->a:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Logn;->a()Logd;

    move-result-object v0

    return-object v0
.end method
