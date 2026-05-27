.class public final Lnbx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnca;

.field public static final b:Lnbz;


# instance fields
.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public final e:Lnca;

.field public f:Lnbz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnbv;

    invoke-direct {v0}, Lnbv;-><init>()V

    sput-object v0, Lnbx;->a:Lnca;

    new-instance v0, Lnbw;

    invoke-direct {v0}, Lnbw;-><init>()V

    sput-object v0, Lnbx;->b:Lnbz;

    return-void
.end method

.method public constructor <init>(Lnca;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnbx;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnbx;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lnbx;->f:Lnbz;

    iput-object p1, p0, Lnbx;->e:Lnca;

    return-void
.end method
