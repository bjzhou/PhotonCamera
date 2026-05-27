.class public Lcom/agc/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/Log$Hander;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "AGC"

.field static handers:[Lcom/agc/Log$Hander;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/agc/Log$Hander;

    sput-object v0, Lcom/agc/Log;->handers:[Lcom/agc/Log$Hander;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(D)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "d"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "d"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "d"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;D)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;F)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;Z)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;[D)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;[F)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;[I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;[Z)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "d"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Z)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "d"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d([D)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "d"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d([F)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "d"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d([I)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "d"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d([Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "d"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d([Z)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "d"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(D)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;D)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;F)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;Z)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;[D)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;[F)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;[I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;[Z)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Z)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e([D)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e([F)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e([I)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e([Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e([Z)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/agc/Log;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "android.app.AppGlobals"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getInitialApplication"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public static i(D)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;D)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;F)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;Z)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;[D)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;[F)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;[I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;[Z)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "i"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Z)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i([D)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i([F)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i([I)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i([Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i([Z)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    sget-object v0, Lcom/agc/Debug;->debugView:Lcom/agc/fw/FloatManager;

    invoke-virtual {v0, p0, p1}, Lcom/agc/fw/FloatManager;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {p0, p1}, Lcom/agc/CrashHandler;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "i"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "e"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/agc/Log;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    sget-object p0, Lcom/agc/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_1
    sget-object p0, Lcom/agc/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_2
    sget-object p0, Lcom/agc/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_3
    sget-object p0, Lcom/agc/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_4
    sget-object p0, Lcom/agc/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x65 -> :sswitch_3
        0x69 -> :sswitch_2
        0x76 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static s()I
    .locals 1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "<null>"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, [F

    if-eqz v0, :cond_2

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, [D

    if-eqz v0, :cond_3

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, [Z

    if-eqz v0, :cond_5

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_6

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(D)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "v"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "v"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "v"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;D)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;F)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;Z)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;[D)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;[F)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;[I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;[Z)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Z)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "v"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v([D)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "v"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v([F)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "v"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v([I)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "v"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v([Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "v"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v([Z)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "v"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(D)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "w"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "w"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "w"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;D)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;F)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;Z)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;[D)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;[F)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;[I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;[Z)I
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/Log;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "w"

    invoke-static {p1, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Z)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "w"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w([D)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "w"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w([F)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "w"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w([I)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "w"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w([Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "w"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w([Z)I
    .locals 1

    invoke-static {p0}, Lcom/agc/Log;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "w"

    invoke-static {v0, p0}, Lcom/agc/Log;->log(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
