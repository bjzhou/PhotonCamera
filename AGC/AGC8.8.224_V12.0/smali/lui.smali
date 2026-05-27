.class public final Llui;
.super Ljava/lang/Object;


# static fields
.field public static final a:Laxf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ldq;->g(Ljava/util/Set;I)Laxf;

    move-result-object v0

    sput-object v0, Llui;->a:Laxf;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ldq;->g(Ljava/util/Set;I)Laxf;

    return-void
.end method
