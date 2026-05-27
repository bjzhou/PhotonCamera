.class public final Lehj;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lehj;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lehj;
    .locals 1

    new-instance v0, Lehj;

    invoke-direct {v0, p0}, Lehj;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcvr;
    .locals 2

    iget-object v0, p0, Lehj;->a:Loiw;

    check-cast v0, Lfwb;

    invoke-virtual {v0}, Lfwb;->a()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcvr;

    invoke-direct {v1, v0}, Lcvr;-><init>(Landroid/util/DisplayMetrics;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lehj;->b()Lcvr;

    move-result-object v0

    return-object v0
.end method
