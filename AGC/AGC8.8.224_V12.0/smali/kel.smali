.class public final Lkel;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkfg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkfg;

    invoke-direct {v0}, Lkfg;-><init>()V

    sput-object v0, Lkel;->a:Lkfg;

    return-void
.end method

.method public static a(Lkai;)Lkfg;
    .locals 1

    new-instance v0, Lkej;

    invoke-direct {v0, p0, p0}, Lkej;-><init>(Lkai;Lkai;)V

    return-object v0
.end method

.method public static b(Ljava/util/Collection;)Lkfg;
    .locals 1

    new-instance v0, Lkeh;

    invoke-static {p0}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p0

    invoke-direct {v0, p0}, Lkeh;-><init>(Lmvv;)V

    return-object v0
.end method

.method public static c(Lkai;)Lkfg;
    .locals 1

    new-instance v0, Lkei;

    invoke-direct {v0, p0, p0}, Lkei;-><init>(Lkai;Lkai;)V

    return-object v0
.end method
