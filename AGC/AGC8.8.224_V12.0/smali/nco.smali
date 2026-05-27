.class public final Lnco;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I

.field private static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnao;->a:Lnbc;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnco;->b:Ljava/util/Set;

    invoke-static {v0}, Lnce;->a(Ljava/util/Set;)Lncb;

    return-void
.end method
