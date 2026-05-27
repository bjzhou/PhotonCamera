.class public final Ljwa;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgnl;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lgnl;-><init>(I)V

    sput-object v0, Ljwa;->a:Lkad;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljwb;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljvz;

    invoke-direct {v0, p0}, Ljvz;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljwb;Lmqi;Lmqi;)Ljwb;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljvy;

    invoke-direct {v0, p0, p1, p2}, Ljvy;-><init>(Ljwb;Lmqi;Lmqi;)V

    return-object v0
.end method
