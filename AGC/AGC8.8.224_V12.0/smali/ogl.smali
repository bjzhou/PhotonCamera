.class public final Logl;
.super Ljava/lang/Object;

# interfaces
.implements Logk;
.implements Logd;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Logl;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Logk;
    .locals 1

    new-instance v0, Logl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Logl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Logl;->a:Ljava/lang/Object;

    return-object v0
.end method
