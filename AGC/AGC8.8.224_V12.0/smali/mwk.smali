.class public final Lmwk;
.super Lmsw;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lmwk;

.field public static final b:Lmwk;


# instance fields
.field private final transient c:Lmvv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmwk;

    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    invoke-direct {v0, v1}, Lmwk;-><init>(Lmvv;)V

    sput-object v0, Lmwk;->a:Lmwk;

    new-instance v0, Lmwk;

    sget-object v1, Lmym;->a:Lmym;

    invoke-static {v1}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v1

    invoke-direct {v0, v1}, Lmwk;-><init>(Lmvv;)V

    sput-object v0, Lmwk;->b:Lmwk;

    return-void
.end method

.method public constructor <init>(Lmvv;)V
    .locals 0

    invoke-direct {p0}, Lmsw;-><init>()V

    iput-object p1, p0, Lmwk;->c:Lmvv;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lmwk;->c:Lmvv;

    invoke-virtual {v0}, Lmvv;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmza;->a:Lmza;

    goto :goto_0

    :cond_0
    new-instance v0, Lmzb;

    iget-object v1, p0, Lmwk;->c:Lmvv;

    sget-object v2, Lmyl;->a:Lmyk;

    invoke-direct {v0, v1, v2}, Lmzb;-><init>(Lmvv;Ljava/util/Comparator;)V

    :goto_0
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lmwj;

    iget-object v1, p0, Lmwk;->c:Lmvv;

    invoke-direct {v0, v1}, Lmwj;-><init>(Lmvv;)V

    return-object v0
.end method
