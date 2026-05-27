.class public abstract Lbry;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbry;

.field public static final b:Lbry;

.field public static final c:Lbry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbrv;

    invoke-direct {v0}, Lbrv;-><init>()V

    sput-object v0, Lbry;->a:Lbry;

    new-instance v0, Lbrw;

    invoke-direct {v0}, Lbrw;-><init>()V

    sput-object v0, Lbry;->b:Lbry;

    new-instance v0, Lbrx;

    invoke-direct {v0}, Lbrx;-><init>()V

    sput-object v0, Lbry;->c:Lbry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(I)Z
.end method

.method public abstract d(ZII)Z
.end method
