.class public final Ljvh;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljve;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljvf;

    invoke-direct {v0}, Ljvf;-><init>()V

    sput-object v0, Ljvh;->a:Ljve;

    return-void
.end method

.method public static a(Ljve;Lkad;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljvg;

    invoke-direct {v0, p1, p2}, Ljvg;-><init>(Lkad;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljve;->a(Lkad;)V

    return-void
.end method
